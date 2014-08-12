class RemoveAreaInPropertyLocation < ActiveRecord::Migration
  def change
  	remove_column :property_locations, :area
  end
end
