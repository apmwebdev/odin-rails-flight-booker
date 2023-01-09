class Flight < ApplicationRecord
  belongs_to :departure_airport, foreign_key: "departure_airport_code",
    class_name: "Airport"
  belongs_to :destination_airport, foreign_key: "destination_airport_code",
    class_name: "Airport"

  def departure_date_formatted
    departure_date.strftime("%m/%d/%Y")
  end

  def self.get_departure_dates
    self.select(:departure_date).distinct.order(:departure_date)
  end
end
