require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb(:get_name)
  end

  post '/stop' do
    $name = params[:name]
    redirect '/hammer'
  end

  get '/hammer' do
    @name = $name
    erb(:hammer)
  end
end
