require 'puppet-syntax/tasks/puppet-syntax'
require 'puppet-lint/tasks/puppet-lint'

def get_modules
  ['modules/*']
end

desc "Run syntax check"
task :syntax

desc "Run linter"
task :lint

desc "Run all tests"
task :test => [:lint, :syntax]

task :default => :test
