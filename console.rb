require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'db_config'
require_relative 'models/user'
require_relative 'models/content'

binding.pry