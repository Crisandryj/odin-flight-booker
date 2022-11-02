class Passenger < ApplicationRecord
has_many :bookings, through: :passenger_booking
has_many :flights, through: :bookings

end
