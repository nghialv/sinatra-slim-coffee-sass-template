$LOAD_PATH.unshift(File.dirname(__FILE__))
require "yaml"
require "rack"
config = YAML.load_file(File.join(File.dirname(__FILE__),'settings/config.yml'))
ENV['twitter_key']= config['twitter']['consumer_key']
ENV['twitter_secret'] = config['twitter']['consumer_secret']

require "mongoid"
Mongoid.load!('./settings/mongoid.yml', :development)

require 'myapp'
run MyApp

