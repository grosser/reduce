desc "Run all specs in spec directory"
task :default do |t|
  options = "--colour --format progress --loadby --reverse"
  files = FileList['spec/**/*_spec.rb']
  system("spec #{options} #{files}")
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "reduce"
    gem.summary = "Reduce your assets: minify javascript + stylesheets, optimize images lossless"
    gem.email = "grosser.michael@gmail.com"
    gem.homepage = "http://github.com/grosser/reduce"
    gem.authors = ["Michael Grosser"]
    gem.add_dependency ['grosser-smusher']
    gem.files += FileList["vendor/**/*"]
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end