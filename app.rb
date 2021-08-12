require 'sinatra'
require 'sinatra/reloader'

class Battle < Sinatra::Base  
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

get '/' do
  "Testing infrastructure working!"
  erb(:index)
  # redirect('/play')
end

post '/names' do
  session[:player1] = params[:player1]
  session[:player2] = params[:player2]
  redirect ('/play')
end

get '/play'  do
  @player1 = session[:player1]
  @player2 = session[:player2]
  @health1 = "60/60 HP"
  @health2 = "60/60 HP"
  erb(:play)
end

# start the server if ruby file executed directly
run! if app_file ==$0
end
