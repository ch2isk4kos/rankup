class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :sport_id
      t.belongs_to :sport, foreign_key: true

      t.timestamps
    end
  end
end
