json.extract! weather, :id, :cityId, :created_at, :updated_at
json.url weather_url(weather, format: :json)
