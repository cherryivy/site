class CharitySpecificFields < ActiveRecord::Migration
  def change
    add_column :users, :contact_person, :string
    add_column :users, :phone,          :string
  end
end
