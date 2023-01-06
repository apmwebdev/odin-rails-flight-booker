class Airport < ApplicationRecord
  self.primary_key = :code
  has_many :departing_flights, foreign_key: "departure_airport_code",
    primary_key: "code", class_name: "Flight"
  has_many :arriving_flights, foreign_key: "destination_airport_code",
    primary_key: "code", class_name: "Flight"
end
