module RPS
  class Player < ActiveRecord::Base
    # has_many :games
    has_many :tournaments, foreign_key: "winner_id"
    
    def games
      Games.where(player_1_id = self.id) | Games.where(player_2_id = self.id)
    end
  end
end
