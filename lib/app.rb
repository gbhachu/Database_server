require 'sinatra/base'

class DBserver < Sinatra::Base
  set :port, 4000
  get '/' do
    'Hello Server!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
