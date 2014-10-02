module RPS
  class Tournament < ActiveRecord::Base
    has_many :games
    belongs_to :winner, class_name: "Player"
  end
end