require 'smusher'
raise "please install a newer version of smusher" if Smusher::VERSION < '0.4.0'

module Reduce
  extend self

  VERSION = File.read( File.join(File.dirname(__FILE__),'..','VERSION') ).strip

  def reduce(file)
    extension = File.extname(file).downcase.sub('.','')
    case extension
    when 'html', 'xml'
      compressor = File.join(File.dirname(__FILE__),'..','vendor','htmlcompressor*.jar')
      `java -jar #{compressor} --type #{extension} #{file}`
    when 'js','css'
      compressor = File.join(File.dirname(__FILE__),'..','vendor','yuicompressor*.jar')
      `java -jar #{compressor} --type #{extension} #{file}`
    when 'jpg', 'jpeg', 'png', 'gif'
      reduce_image file
    else
      raise "reduce does not know how to handle a .#{extension} file (#{file})"
    end
  end

  private

  def reduce_image(input)
    output = input+'.temp'
    FileUtils.cp(input, output)

    service = (input.downcase =~ /\.gif$/ ? 'PunyPng' : 'SmushIt')
    Smusher.optimize_image(output, :quiet=>true, :service => service)

    data = File.read(output)
    FileUtils.rm(output)
    data
  end
end