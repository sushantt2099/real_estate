class CreatePropertyLocations < ActiveRecord::Migration
  def change
    create_table :property_locations do |t|
      t.string :area
      t.integer :city
      t.integer :state
      t.integer :country

      t.timestamps
    end
  end
end
