class CreatePasswordDigestsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :password_digest, :string
    remove_column :accounts, :password, :string
  end
end
