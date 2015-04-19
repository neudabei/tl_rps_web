require 'rubygems'
require 'sinatra'
require 'pry'

set :sessions, true

get '/' do
  erb :set_choice
end

post '/set_choice' do
  session[:pc] = params[:player_choice]
  if session[:pc].downcase == 's' || session[:pc].downcase == 'p' || session[:pc].downcase == 'r'
  redirect '/game'
  else
    @error = "You have to choose between p, r, s. Please enter your choice again!"
  end
end

get '/game' do
  erb :game
end

get '/bye' do
  "Good bye! Thanks for playing!"
end