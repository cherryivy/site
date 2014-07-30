class AddFieldsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :address_line_1, :string
  	add_column :events, :address_line_2, :string
  	add_column :events, :city,           :string
  	add_column :events, :state,          :string
  	add_column :events, :zip_code,       :string
  	add_column :events, :contact_person, :string
    add_column :events, :event_email,    :string
    add_column :events, :phone_number,   :string
    add_column :events, :is_active,      :boolean
  end
end
