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
- arrival_airport - references/belongs to airport
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