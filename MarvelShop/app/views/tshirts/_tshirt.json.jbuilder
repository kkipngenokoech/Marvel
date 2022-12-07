json.extract! tshirt, :id, :color, :character, :size, :image, :created_at, :updated_at
json.url tshirt_url(tshirt, format: :json)
json.image url_for(tshirt.image)
