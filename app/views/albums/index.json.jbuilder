json.array!(@albums) do |album|
  json.extract! album, :id, :name, :image
  json.url album_url(album, format: :json)
end
