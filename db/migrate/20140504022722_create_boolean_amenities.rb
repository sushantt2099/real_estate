class CreateBooleanAmenities < ActiveRecord::Migration
  def change
    create_table :boolean_amenities do |t|
      t.boolean :dining_table
      t.boolean :fridge
      t.boolean :sofa
      t.boolean :gas_pipe
      t.boolean :stove
      t.boolean :gym
      t.boolean :swimming_pool
      t.boolean :lift
      t.boolean :washing_machine
      t.boolean :microwave
      t.boolean :servent_room

      t.timestamps
    end
  end
end
