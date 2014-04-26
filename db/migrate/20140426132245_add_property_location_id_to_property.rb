class AddPropertyLocationIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :property_location_id, :integer
  end
end
