require_relative '..lib/rps_tournament'
require 'sinatra/base'

class RPS::Server < Sinatra::Application
  configure do
    st :bind, '0.0.0.0'
  end

  get '/' do
    erb :index
  end

end