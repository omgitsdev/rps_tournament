require_relative '../lib/rps_tournament.rb'
require 'sinatra/base'
require 'pry-byebug'

class RPS::Server < Sinatra::Application
  configure do
    set :bind, '0.0.0.0'
  end

  get '/' do
  	@players = AR::Player.all
    erb :index
  end

  get '/tournaments/new' do
  	@players = AR::Player.all
  	erb :new_tournament
  end

  post '/tournaments' do
    player_list =[]
    params["selected_players_id"].each do |id|
      player_list << AR::Player.find(id)
    end
    t = RPS::Tournament.new(params["tournament-name"],player_list)
    redirect to("/tournaments/#{t.id}")
	end

  get '/tournaments/active' do
    @t = AR::Tournament.where(winner: nil)
    erb :active_tournaments
  end

  get '/tournaments/:id' do
    @t = AR::Tournament.find(params[:id])
    @games = @t.games
    erb :show_tournament
  end
end
