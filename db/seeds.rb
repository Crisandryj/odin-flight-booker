# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# ActiveRecord::Base.transaction do
#   Booking.destroy_all
#   Passenger.destroy_all
#   Flight.destroy_all
#   Airport.destroy_all


airports = []
airports[0] = Airport.create(code: 'PIT', name: 'Pittsburgh International Airport', city: 'Pittsburgh')
airports[1] = Airport.create(code: 'SAN', name: 'San Diego International Airport', city: 'San Diego')
airports[2] = Airport.create(code: 'DTW', name: 'Detroit Metropolitan Airport', city: 'Detroit')
airports[3] = Airport.create(code: 'JFK', name: 'John F Kennedy International Airport', city: 'New York')
airports[4] = Airport.create(code: 'SFO', name: 'San Francisco International Airport', city: 'San Francisco')
airports[5] = Airport.create(code: 'ORD', name: 'O\'hare International Airport', city: 'Chicago')
airports[6] = Airport.create(code: 'SLC', name: 'Salt Lake City International Airport', city: 'Salt Lake City')
airports[7] = Airport.create(code: 'DFW', name: 'Dallas / Fort Worth International Airport', city: 'Dallas')
airports[8] = Airport.create(code: 'SEA', name: 'Seattle-Tacoma International Airport', city: 'Seattle')
airports[9] = Airport.create(code: 'BOS', name: 'Logan International Airport', city: 'Boston')
