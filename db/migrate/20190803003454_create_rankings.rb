class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.text :description
      t.integer :user_id
      t.integer :category_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
