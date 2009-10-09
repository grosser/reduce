desc "Run all specs in spec directory"
task :default do |t|
  options = "--colour --format progress --loadby --reverse"
  files = FileList['spec/**/*_spec.rb']
  system("spec #{options} #{files}")
end

begin
  require 'jeweler'
  project_name = 'reduce'
  Jeweler::Tasks.new do |gem|
    gem.name = "reduce"
    gem.summary = "Reduce your assets: minify javascript + stylesheets, optimize images lossless"
    gem.email = "grosser.michael@gmail.com"
    gem.homepage = "http://github.com/grosser/#{project_name}"
    gem.authors = ["Michael Grosser"]
    gem.add_dependency ['smusher']
    gem.rubyforge_project = project_name
  end

  # fake task so that rubyforge:release works
  task :rdoc do
    `mkdir rdoc`
    `echo documentation is at http://github.com/grosser/#{project_name} > rdoc/README.rdoc`
  end

  Jeweler::RubyforgeTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end