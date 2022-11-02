class Booking < ApplicationRecord
  has_many :flights, inverse_of: :booking
  belongs_to :passenger, inverse_of: :bookings

  validates :flight_id, presence: true

  accepts_nested_attributes_for :passenger
end
