require_relative '../lib/rps_tournament.rb'
require 'sinatra/base'

class RPS::Server < Sinatra::Application
  configure do
    set :bind, '0.0.0.0'
  end

  get '/' do
  	@players = RPS::Player.all
    erb :index
  end

  get '/tournaments/new' do
  	@players = RPS::Player.all
  	erb :new_tournament
  end

  post '/tournaments/new' do
	end
end
