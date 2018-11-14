require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Hello app"
  end
end
