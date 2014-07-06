class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :charity, index: true
      t.string     :title
      t.datetime   :start_time
      t.datetime   :end_time
      t.string     :location
      t.text       :description

      t.timestamps
    end
  end
end
