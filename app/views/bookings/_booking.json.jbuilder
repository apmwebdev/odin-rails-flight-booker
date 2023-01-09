json.extract! booking, :id, :flight_id, :number_of_passengers, :created_at, :updated_at
json.url booking_url(booking, format: :json)
