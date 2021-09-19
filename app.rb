require 'sinatra/base'
require 'sinatra/reloader'
require './lib/peeps'


class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome to Chitter'
  end

 get '/peeps' do
  @peeps = Peeps.all
  erb :"peeps/index"
end

get '/peeps/new' do
  erb :"peeps/new_peep"
end

post '/peeps' do
  Peeps.create(text: params[:text])
  redirect '/peeps'
end

  run! if app_file == $0
end