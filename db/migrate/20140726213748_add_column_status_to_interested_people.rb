class AddColumnStatusToInterestedPeople < ActiveRecord::Migration
  def change
    add_column :interested_people, :status, :integer
  end
end
