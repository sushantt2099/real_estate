class AddInterestedPeopleCountToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :interested_people_count, :integer
  end
end
