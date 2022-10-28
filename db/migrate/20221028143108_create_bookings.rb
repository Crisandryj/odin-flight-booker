class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.passengers
      t.flight_id
      t.timestamps
    end
  end
end
