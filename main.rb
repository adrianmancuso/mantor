     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'db_config'
require_relative 'models/user'
require_relative 'models/content'

helpers do

	def logged_in?
		current_user ? true : false
	end

	def current_user
		User.find_by(id: session[:user_id])
	end

end

enable :sessions

get '/' do
  erb :index
end

get '/sign-up' do
	erb :sign_up
end

post '/sign-up' do

end

get '/login' do
	erb :login
end

get '/logout' do
	session.clear
	redirect "/"
end

get '/user-profile' do
	erb :user_profile
end


def get_location(address)
	api_call = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=" + address + "&key=" + ENV["GOOGLE_KEY"])
	api_call["results"][0]["geometry"]["location"]
end

# //confirmation / logged in page

# content page

