class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :landmark
      t.float :location_lat
      t.float :location_long

      t.timestamps
    end
  end
end
