class AddTypeToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :role
  	add_column :users, :type, :string
  end
end
