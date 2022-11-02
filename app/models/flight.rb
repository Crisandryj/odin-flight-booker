class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  belongs_to :booking, inverse_of: :flights
  belongs_to :passenger, inverse_of: :flights

end
