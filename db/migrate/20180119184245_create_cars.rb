﻿class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :registration_number
      t.string :model
      t.integer :owner_id

      t.timestamps
    end
  end
end
