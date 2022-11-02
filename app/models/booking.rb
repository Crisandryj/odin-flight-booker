class Booking < ApplicationRecord
  belongs_to :flight, inverse_of: :bookings
  belongs_to :passenger, inverse_of: :bookings

  validates :flight_id, presence: true

  accepts_nested_attributes_for :passenger
end
