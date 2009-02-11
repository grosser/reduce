require File.expand_path("spec_helper", File.dirname(__FILE__))
files = File.join(File.dirname(__FILE__),'files')

describe Reduce do
  Dir[files+'/*.min'].each{|f|FileUtils.rm(f)}
  Dir[files+'/*.*'].each do |file|
    it "reduces #{File.extname(file)}" do
      out = file+'.min'
      Reduce.reduce(file,out)
      File.size(out).should < File.size(file)
    end
  end
end