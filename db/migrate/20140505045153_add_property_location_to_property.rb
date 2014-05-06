class AddPropertyLocationToProperty < ActiveRecord::Migration
  def change
    add_reference :properties, :property_location, index: true
  end
end
