class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def start_date_time_formatted
  start_date_time.strftime("%m/%d/%Y")
  end

end
