require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  post '/play' do
    session[:attack_message] = true
    redirect '/play'
  end

  get '/play' do
    @player2_hitpoint = 100
    erb :play
  end

  #start the server if ruby file is executed directly
  run! if app_file == $0
end
