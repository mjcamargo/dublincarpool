json.extract! trip, :id, :date, :time, :pickup_location, :destination, :price, :seats_available, :driver_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
