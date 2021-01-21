require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

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
    @name = $name
    @name2 = $name2
    erb(:play)
  end

  get '/attack' do
    @name = $name
    @name2 = $name2
    Game.new.attack(@name2)
    erb(:attack)
  end

  run! if app_file == $0
end
