class RemoveRankingIdFromPlayersTable < ActiveRecord::Migration[5.2]
  def change
      remove_index :players, :ranking_id
  end
end
