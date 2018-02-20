class CreateParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :parkings do |t|
      t.integer :places
      t.integer :kind
      t.integer :hour_price
      t.integer :day_price
      t.integer :address_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
