class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player_1
      t.references :player_2
      t.string :move_1
      t.string :move_2
      t.references :winner
      t.references :tournament
    end
  end
end
