#album is a join table 

class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name

      t.integer :image_id 
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
