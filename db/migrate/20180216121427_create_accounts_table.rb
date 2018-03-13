class CreateAccountsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password
      t.integer :owner_id

      t.timestamps
    end
    add_index :accounts, :email
    add_index :accounts, :owner_id
  end
end

