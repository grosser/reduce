$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
name = "reduce"
require "#{name}/version"

Gem::Specification.new name, Reduce::VERSION do |s|
  s.summary = "Reduce your assets: minify javascript + stylesheets, optimize images lossless"
  s.email = "grosser.michael@gmail.com"
  s.homepage = "https://github.com/grosser/#{name}"
  s.authors = ["Michael Grosser"]
  s.executables = [name]
  s.add_runtime_dependency "smusher"
  s.files = `git ls-files`.split("\n")
  s.license = "MIT"
end
