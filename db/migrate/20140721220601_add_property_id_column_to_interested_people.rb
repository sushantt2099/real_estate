class AddPropertyIdColumnToInterestedPeople < ActiveRecord::Migration
  def change
    add_column :interested_people, :property_id, :string
  end
end
