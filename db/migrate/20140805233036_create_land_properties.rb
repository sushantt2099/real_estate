class CreateLandProperties < ActiveRecord::Migration
  def change
    create_table :land_properties do |t|
      t.integer :lease_type
      t.integer :interested_people_count
      t.date :available_from
      t.text :description
      t.integer :water_supply
      t.integer :area
      t.integer :price

      t.timestamps
    end
  end
end
