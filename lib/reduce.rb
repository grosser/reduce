gem 'grosser-smusher', '>=0.3.3'
require 'smusher'

module Reduce
  extend self
  def reduce(input,output=nil)
    extension = File.extname(input).downcase.sub('.','')
    case extension
    when 'js','css'
      compressor = File.join(File.dirname(__FILE__),'..','vendor','yuicompressor*.jar')
      `java -jar #{compressor} --type #{extension} #{input} > #{output}`
    when 'jpg','jpeg','png'
      FileUtils.cp(input,output)
      Smusher.optimize_image(output,:quiet=>true)
    else
      raise "WTF? a .#{extension} file...."
    end
  end
end