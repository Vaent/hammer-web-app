require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:get_name)
  end

  post '/stop' do
    session[:name] = (params[:name] == "" ? "Nails" : params[:name])
    redirect '/hammer'
  end

  get '/hammer' do
    @name = session[:name]
    erb(:hammer)
  end
end
