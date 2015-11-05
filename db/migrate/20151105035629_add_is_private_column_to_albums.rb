class AddIsPrivateColumnToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :is_private, :boolean
  end
end
