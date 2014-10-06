class ChangePlayersToSize < ActiveRecord::Migration
  def change
    remove_column :tournaments, :players
    add_column :tournaments, :size, :integer
  end
end
