class AddRankingIndexToPlayers < ActiveRecord::Migration[5.2]
  def change
      add_reference :players, :ranking, type: :integer
  end
end
