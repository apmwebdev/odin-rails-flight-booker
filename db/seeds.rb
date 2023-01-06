# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flight.destroy_all
Airport.destroy_all
airports = Airport.create([{
  city: "Portland",
  state: "OR",
  code: "PDX"
}, {
  city: "Boston",
  state: "MA",
  code: "BOS"
}, {
  city: "Chicago",
  state: "IL",
  code: "ORD"
}, {
  city: "Los Angeles",
  state: "CA",
  code: "LAX"
}, {
  city: "New York City",
  state: "NY",
  code: "LGA"
}, {
  city: "Detroit",
  state: "MI",
  code: "DTW"
}, {
  city: "Seattle",
  state: "WA",
  code: "SEA"
}, {
  city: "Indianapolis",
  state: "IN",
  code: "IND"
}, {
  city: "Dayton",
  state: "OH",
  code: "DAY"
}, {
  city: "Portland",
  state: "ME",
  code: "PWM"
}])
p "Seeded airports"

def create_flights
  airports = Airport.pluck(:code)
  routes = airports.product(airports)
  routes.reject! { |i| i[0] == i[1] }
  routes.each do |route|
    duration = rand(90..600)
    departure_times = Array.new(3) { random_time }
    31.times do |date_offset|
      departure_times.each do |dep_time|
        Flight.create({
          departure_airport_code: route[0],
          destination_airport_code: route[1],
          departure_date: Date.today + date_offset.days,
          departure_time: dep_time,
          duration:
        })
      end
    end
  end
end

def random_time
  now = Time.now.to_i
  tomorrow = (now + 60 * 60 * 24).to_i
  Time.at(rand(now..tomorrow))
end

create_flights
p "Seeded flights"