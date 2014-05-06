class AddIntegerAmenityToProperty < ActiveRecord::Migration
  def change
    add_reference :properties, :integer_amenity, index: true
  end
end
