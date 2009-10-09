require 'smusher'
raise "please install a newer version of smusher" if Smusher::VERSION < '0.4.0'

module Reduce
  extend self

  VERSION = File.read( File.join(File.dirname(__FILE__),'..','VERSION') ).strip

  def reduce(input, output=nil)
    extension = File.extname(input).downcase.sub('.','')
    case extension
    when 'js','css'
      compressor = File.join(File.dirname(__FILE__),'..','vendor','yuicompressor*.jar')
      if output
        `java -jar #{compressor} --type #{extension} #{input} > #{output}`
      else
        `java -jar #{compressor} --type #{extension} #{input}`
      end
    when 'jpg', 'jpeg', 'png', 'gif'
      if output
        reduce_image(input, output)
      else
        output = input+'.temp'
        reduce_image(input, output)
        data = File.read(output)
        FileUtils.rm(output)
        data
      end
    else
      raise "WTF? a .#{extension} file...."
    end
  end

  private

  def reduce_image(input, output)
    FileUtils.cp(input, output)
    service = (input.downcase =~ /\.gif$/ ? 'PunyPng' : 'SmushIt')
    Smusher.optimize_image(output, :quiet=>true, :service => service)
  end
end