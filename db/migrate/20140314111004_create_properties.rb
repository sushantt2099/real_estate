class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :property_type
      t.integer :rent
      t.integer :deposit
      t.integer :furnishing
      t.integer :lease_type
      t.integer :build_area
      t.date :available_from
      t.integer :power_backup
      t.integer :integer_amenity_id
      t.integer :boolean_amenity_id
      t.integer :property_location_id
      t.integer :interested_people_count

      t.timestamps
    end
  end
end
