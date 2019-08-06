class RemoveRankingIndexFromPlayersTable < ActiveRecord::Migration[5.2]
  def change
      remove_column :players, :ranking_id
  end
end
