class DeleteImageIdColumnFromAlbums < ActiveRecord::Migration
  def change
  	remove_column :albums, :image_id
  end
end
