require 'sinatra/base'
require 'tempengine'
require 'slim'
require 'pry'

class MyApp < Sinatra::Base
  use TempEngine

  # homepage
  get '/' do
    @tmps = Array.new
    10.times do
      @tmps << {
        url: "http://vnexpress.net/",
        screenshot: "http://lorempixel.com/#{750+rand(100)}/#{450+rand(100)}",
        title: "vnexpress",
        content: "AAAAAAAAAA BBBBBBBBBB CCCCCCCCCCCCC" }
    end
    slim :home
  end

  run! if app_file == $0
end
