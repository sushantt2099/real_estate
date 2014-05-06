class AddBooleanAmenityToProperty < ActiveRecord::Migration
  def change
    add_reference :properties, :boolean_amenity, index: true
  end
end
