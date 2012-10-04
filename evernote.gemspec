# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require "evernote/version"

Gem::Specification.new do |s|
  s.name = "evernote"
  s.version = Evernote::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Sepic"]
  s.email       = ["chris.sepic@gmail.com"]
  s.homepage    = "http://github.com/cgs/evernote"
  s.summary     = "High level wrapper for the Evernote API"
  s.description = "A high level wrapper around Evernote's Thrift-generated ruby code. It bundles up Evernote's thrift-generated code and creates some simple wrapper classes."
 
  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "yard"
  
  s.extensions  = ['ext/extconf.rb']
  s.executables = ['thrift_native']
 
  s.files = Dir.glob("{lib,spec,vendor}/**/*") + Dir.glob('ext/**/*.{c,h,rb}') +
    %w(LICENSE README.mkd Rakefile .gitignore example.rb)
  
  s.require_path = 'lib'
end
