require 'sinatra/base'

class DBserver < Sinatra::Base
  set :port, 4000

  get '/' do
    'Hello Server!'
  end

  get '/set' do
    'Hello again!'
  end

  get '/get' do
    'We really need to stop meeting like this'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
