require File.expand_path("spec_helper", File.dirname(__FILE__))
files = File.join(File.dirname(__FILE__),'files')

describe Reduce do
  Dir[files+'/*.min.*', files+'/*.temp'].each{|f| FileUtils.rm(f)}

  Dir[files+'/*.*'].each do |file|
    extension = File.extname(file)
    it "reduces #{extension} and stores in output" do
      out = file.sub(extension, ".min#{extension}")
      Reduce.reduce(file, out)
      File.size(out).should < File.size(file)
    end

    it "reduces #{File.extname(file)} and returns the content" do
      data = Reduce.reduce(file)
      data.length.should < File.size(file)
    end
  end

  it "uses PunyPng for gifs" do
    Smusher.should_receive(:optimize_image).with(anything, hash_including(:service => 'PunyPng'))
    Reduce.reduce(File.join(files, 'test.gif'))
  end

  it "uses SmushIt for other images" do
    Smusher.should_receive(:optimize_image).with(anything, hash_including(:service => 'SmushIt'))
    Reduce.reduce(File.join(files, 'paintcan.png'))
  end
end