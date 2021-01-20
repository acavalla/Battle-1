require 'sinatra/base'

class Battle < Sinatra::Base
  # app code here...

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @name = params[:name]
    @name2 = params[:name2]
    erb(:play)
  end

  run! if app_file == $0

end


# CLASSIC

# get '/' do
#   'Battle!'
# end
