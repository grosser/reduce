# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{reduce}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Grosser"]
  s.date = %q{2009-07-23}
  s.default_executable = %q{reduce}
  s.email = %q{grosser.michael@gmail.com}
  s.executables = ["reduce"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "bin/reduce",
     "lib/reduce.rb",
     "reduce.gemspec",
     "spec/files/facebox.css",
     "spec/files/facebox.js",
     "spec/files/paintcan.png",
     "spec/reduce_spec.rb",
     "spec/spec_helper.rb",
     "vendor/README",
     "vendor/README",
     "vendor/yuicompressor-2.4.2.jar",
     "vendor/yuicompressor-2.4.2.jar"
  ]
  s.homepage = %q{http://github.com/grosser/reduce}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Reduce your assets: minify javascript + stylesheets, optimize images lossless}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/reduce_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grosser-smusher>, [">= 0"])
    else
      s.add_dependency(%q<grosser-smusher>, [">= 0"])
    end
  else
    s.add_dependency(%q<grosser-smusher>, [">= 0"])
  end
end
