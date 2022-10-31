class Booking < ApplicationRecord
  has_many :flights, inverse_of: :booking
  has_many :passengers, through: :flights

  accepts_nested_attributes_for :passengers
end
