class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :fav_sport
      t.string :fav_team
      t.string :fav_player

      t.timestamps
    end
  end
end
