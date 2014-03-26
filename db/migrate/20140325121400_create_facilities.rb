class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.boolean :gym
      t.boolean :lift
      t.boolean :swimming_pool
      t.integer :parking
      t.integer :ac

      t.timestamps
    end
  end
end
