require 'sinatra'
require 'sinatra/base'


class Gentoo < Sinatra::Base

  get '/' do
    slim :index, :layout => :main_layout 
  end

  set :environment, :development
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)

  set :views, 'views'
  set :slim, :pretty => true, :format => :html5
end
