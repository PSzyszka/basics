class CreatePlaceRent < ActiveRecord::Migration[5.1]
  def change
    create_table :place_rent do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :price
      t.integer :parking_id
      t.integer :car_id

      t.timestamps
    end
  end
end
