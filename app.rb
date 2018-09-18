require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    @name = params[:name]
    erb :index
  end

  #start the server if ruby file is executed directly
  run! if app_file == $0
end