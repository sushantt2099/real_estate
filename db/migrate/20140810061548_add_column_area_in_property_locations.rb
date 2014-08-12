class AddColumnAreaInPropertyLocations < ActiveRecord::Migration
  def change
  	add_column :property_locations, :area, :integer
  end
end
