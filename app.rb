require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  #enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name]),
                     Player.new(params[:name2]))
    # $name = Player.new(params[:name])
    # $name2 = Player.new(params[:name2])
    redirect "/play"
  end

  get '/play' do
    @name = $game.player_1
    @name2 = $game.player_2
    erb(:play)
  end

  get '/attack' do
    @name = $game.player_1
    @name2 = $game.player_2
    $game.attack(@name2)
    erb(:attack)
  end

  run! if app_file == $0
end
