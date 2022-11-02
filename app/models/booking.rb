class Booking < ApplicationRecord
  belongs_to :flight, inverse_of: :flight
  has_many :passengers, through: :passenger_booking

  validates :flight_id, presence: true

  accepts_nested_attributes_for :passenger
end
