class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string 	:photo
    	t.integer 	:property_id

      	t.timestamps
    end
  end
end
