class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :location
      t.date :trip_start_date
      t.date :trip_end_date
      t.text :description

      t.timestamps
    end
  end
end
