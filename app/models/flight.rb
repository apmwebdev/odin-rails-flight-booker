class Flight < ApplicationRecord
  belongs_to :departure_airport
  belongs_to :destination_airport
end
