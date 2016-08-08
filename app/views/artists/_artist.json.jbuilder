json.extract! artist, :id, :name, :description, :image_url, :created_at, :updated_at
json.url artist_url(artist, format: :json)