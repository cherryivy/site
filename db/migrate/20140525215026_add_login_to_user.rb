class AddLoginToUser < ActiveRecord::Migration
  def change
  	add_column :users, :login, :string
  	add_column :users, :email, :string

    add_index :users, :login
    add_index :users, :email
  end
end
