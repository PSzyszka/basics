class CreatePlaceRents < ActiveRecord::Migration[5.1]
  def change
    create_table :place_rents do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :price
      t.integer :parking_id
      t.integer :car_id

      t.timestamps
    end
  end
end
