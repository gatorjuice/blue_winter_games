class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :contact_id
      t.integer :game_id
      t.integer :quantity
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.boolean :paid, default: false
      t.boolean :shipped, default: false

      t.timestamps null: false
    end
  end
end
