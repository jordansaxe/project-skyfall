class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.integer :user_id
      t.string :link
      t.string :photo

      t.timestamps
    end
  end
end
