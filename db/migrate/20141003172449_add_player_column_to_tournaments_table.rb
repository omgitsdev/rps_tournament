class AddPlayerColumnToTournamentsTable < ActiveRecord::Migration
  def change
    add_column :tournaments, :players, :integer
  end
end
