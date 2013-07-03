require 'bundler'
Bundler.require
require 'sprockets'
require './app'

root = File.expand_path "../", __FILE__


map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/templates'
  run environment
end


map '/' do
  run Gentoo 
end

