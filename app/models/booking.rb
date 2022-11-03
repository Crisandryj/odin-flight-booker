class Booking < ApplicationRecord
  belongs_to :flight, inverse_of: :bookings
  has_many :passenger_bookings, inverse_of: :booking
  has_many :passengers, through: :passenger_bookings

  validates :flight_id, presence: true

  accepts_nested_attributes_for :passengers
end
