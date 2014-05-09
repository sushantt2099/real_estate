class AddMissingColumnToProperty < ActiveRecord::Migration
  def change
  	add_column :properties, :occupant, :integer
  	add_column :properties, :facing, :integer
  	add_column :properties, :security, :integer
  	add_column :properties, :water_supply, :integer
  end
end
