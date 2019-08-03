class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :number
      t.integer :year
      t.integer :ranking_id
      t.integer :team_id
      t.belongs_to :ranking, foreign_key: true
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end
