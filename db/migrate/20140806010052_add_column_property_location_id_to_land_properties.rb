class AddColumnPropertyLocationIdToLandProperties < ActiveRecord::Migration
  def change
    add_column :land_properties, :property_location_id, :integer
  end
end
