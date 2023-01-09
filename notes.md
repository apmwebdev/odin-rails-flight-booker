## To-dos
- Remove unnecessary resource methods/views
- Either remove editing of bookings or make it so the passengers don't get
added again when you edit them
- Remove number_of_passengers field from Booking model/table
- Improve UI overall. Very quick and dirty currently.

## Models
- Airport
- Flight
- Passenger
- Booking

### Airport
- City
- State
- Code
- has_many departing_flights
- has_many arriving_flights

### Flight
- departure_airport - references/belongs to airport
- destination_airport - references/belongs to airport
- departure_time
- duration
- has_many bookings
- has_many passengers through bookings

### Booking
- references flight
- number_of_passengers
- has_many passengers

### Passenger
- name
- email
- references booking