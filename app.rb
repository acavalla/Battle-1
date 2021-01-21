require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  #enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $name = Player.new(params[:name])
    $name2 = Player.new(params[:name2])
    redirect "/play"
  end

  get '/play' do
    p params
    @name = $name.name
    @name2 = $name2.name
    @attack = params[:attack]
    erb(:play)
  end

  run! if app_file == $0
end
