require 'sinatra/base'

class Battle < Sinatra::Base
  # app code here...

  get '/' do
    'Testing infrastructure working!'
  end

  run! if app_file == $0

end


# CLASSIC

# get '/' do
#   'Battle!'
# end