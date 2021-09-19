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
  erb :'peeps/index'
end

  run! if app_file == $0
end