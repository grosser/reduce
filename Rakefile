require 'bundler/setup'
require 'bump/tasks'
require 'bundler/gem_tasks'

task :default => :spec
require 'spec/rake/spectask'
Spec::Rake::SpecTask.new {|t| t.spec_opts = ['--color']}
