class AddStartDateTimeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_date_time, :integer
  end
end
