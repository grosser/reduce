gem "smusher", ">= 0.4.0"
require "smusher"

require "reduce/version"

module Reduce
  class << self
    def reduce(file)
      extension = File.extname(file).downcase.sub('.','')
      case extension
      when 'html', 'xml'
        compressor = File.join(File.dirname(__FILE__),'..','vendor','htmlcompressor*.jar')
        `java -jar #{compressor} --type #{extension} --compress-js --compress-css #{file}`
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
end
