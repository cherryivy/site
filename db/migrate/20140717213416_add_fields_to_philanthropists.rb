class AddFieldsToPhilanthropists < ActiveRecord::Migration
  def change
  	add_column :users, :zip_code,   :string
  	add_column :users, :birth_date, :date
  	add_column :users, :is_active,  :boolean
  end
end
