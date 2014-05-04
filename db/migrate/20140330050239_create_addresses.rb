class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :landmark
      t.float :latitude
      t.float :longitude
      t.integer :property_id

      t.timestamps
    end
  end
end
