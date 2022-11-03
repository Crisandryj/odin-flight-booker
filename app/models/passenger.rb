class Passenger < ApplicationRecord
has_many :passenger_bookings, inverse_of: :passenger
has_many :bookings, through: :passenger_booking
has_many :flights, through: :bookings

end
