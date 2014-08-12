class AddColumnLandPropertyIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :land_property_id, :integer
  end
end
