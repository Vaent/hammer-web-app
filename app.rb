require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:get_name)
  end

  post '/go' do
    session[:name] = (params[:name] == "" ? "Nails" : params[:name])
    redirect '/stop'
  end

  get '/stop' do
    erb(:stop)
  end

  get '/hammer' do
    @name = session[:name]
    erb(:hammer)
  end
end
