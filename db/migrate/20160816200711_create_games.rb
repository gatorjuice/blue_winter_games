class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :min_players
      t.integer :max_players

      t.timestamps null: false
    end
  end
end
