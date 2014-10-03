require 'pry-byebug'


module RPS
	class Tournament
    def initialize(name, player_list)
      t = AR::Tournament.create(name: name)
      for i in (0...player_list.length/2) do
        AR::Game.create(tournament: t, player_1: player_list[i], player_2: player_list[player_list.length-(i+1)])
      end
      return t
    end
  end
end
