json.extract! flight, :id, :departure_airport_code, :destination_airport_code, :departure_time, :duration, :created_at, :updated_at
json.url flight_url(flight, format: :json)
