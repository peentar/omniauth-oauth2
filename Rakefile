#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rubygems/tasks"

RSpec::Core::RakeTask.new
Gem::Tasks.new

task :test => :spec

begin
  require "rubocop/rake_task"
  RuboCop::RakeTask.new
rescue LoadError
  task :rubocop do
    $stderr.puts "RuboCop is disabled"
  end
end

task :default => [:spec, :rubocop]
