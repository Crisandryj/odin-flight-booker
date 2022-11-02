class Booking < ApplicationRecord
  has_many :flights, inverse_of: :booking
  has_many :passengers, through: :flights

  validates :flight_id, presence: true
  
  accepts_nested_attributes_for :passengers
end
