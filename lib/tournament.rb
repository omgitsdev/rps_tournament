require 'pry-byebug'

module RPS
	class Tournament
    attr_reader :id
    def initialize(name, player_list)
      t = AR::Tournament.create(name: name, size: player_list.length)
      for i in (0...player_list.length/2) do
        AR::Game.create(tournament: t, player_1: player_list[i], player_2: player_list[player_list.length-(i+1)])
      end
      @id = t.id
    end



  end
end
