require 'mongoid'

class User
  include Mongoid::Document
  field :username
  field :twitter_uid, type: String
  field :access_token
  field :access_secret
end
