require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    session[:name] = params['name']
    session[:name2] = params['name2']
    redirect "/play"
  end

  get '/play' do
    @name = session[:name]
    @name2 = session[:name2]
    erb(:play)
  end

  run! if app_file == $0

end