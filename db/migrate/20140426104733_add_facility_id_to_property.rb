class AddFacilityIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :facility_id, :integer
  end
end
