class DropPlayerRankings < ActiveRecord::Migration[5.2]
  def change
      drop_table :player_rankings
  end
end
