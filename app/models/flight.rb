class Flight < ApplicationRecord
  belongs_to :departure_airport, foreign_key: "departure_airport_code",
    class_name: "Airport"
  belongs_to :destination_airport, foreign_key: "destination_airport_code",
    class_name: "Airport"
end
