class CreatePlaytests < ActiveRecord::Migration
  def change
    create_table :playtests do |t|
      t.integer :contact_id
      t.integer :game_id
      t.text :feedback

      t.timestamps null: false
    end
  end
end
