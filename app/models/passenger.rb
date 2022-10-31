class Passenger < ApplicationRecord
  has_many :flights, inverse_of: :passenger
  has_many :bookings, through: :flights
end
