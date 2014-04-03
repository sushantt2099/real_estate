class RenameLocationLatLatitudeInAddresses < ActiveRecord::Migration
  def change
  	rename_column :addresses, :location_lat, :latitude
  	rename_column :addresses, :location_long, :longitude
  end
end
