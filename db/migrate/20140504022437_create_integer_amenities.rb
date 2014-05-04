class CreateIntegerAmenities < ActiveRecord::Migration
  def change
    create_table :integer_amenities do |t|
      t.integer :bathroom
      t.integer :ac
      t.integer :tv
      t.integer :cupboard
      t.integer :bed

      t.timestamps
    end
  end
end
