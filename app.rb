require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb(:get_name)
  end

  post '/stop' do
    "Hello #{params[:name]}"
  end
end
