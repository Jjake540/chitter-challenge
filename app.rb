require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome to Chitter (Twitter plz dont sue)'
    #will turn this page into a sign in on a later user story
  end

  get '/peeps/new' do
    'Hi'
    erb :'peeps/new'
  end 

  run! if app_file == $0
end