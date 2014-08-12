class AddColumnLandPropertyIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :land_property_id, :integer
  end
end
