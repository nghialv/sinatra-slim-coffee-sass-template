require 'sinatra/base'
require 'coffee-script'
require 'sass'

class TempEngine < Sinatra::Base
  set :views, settings.public_folder
  # coffee
  get '/coffee/*.js' do
    coffee "javascripts/#{params[:splat].first}".to_sym
  end
  # sass
  get '/stylesheets/*.css' do
    sass "stylesheets/#{params[:splat].first}".to_sym
  end
end
