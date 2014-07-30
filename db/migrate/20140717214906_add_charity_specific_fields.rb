class AddCharitySpecificFields < ActiveRecord::Migration
  def change
  	add_column :users, :full_legal_name, :string
  	add_column :users, :ein,             :string
  	add_column :users, :address_line_1,  :string
  	add_column :users, :address_line_2,  :string
  	add_column :users, :city,            :string
    add_column :users, :state,           :string
    add_column :users, :mission,         :text
    add_column :users, :status,          :string
  end
end
