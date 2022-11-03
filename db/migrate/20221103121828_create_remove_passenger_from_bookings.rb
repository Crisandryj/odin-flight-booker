class CreateRemovePassengerFromBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :remove_passenger_from_bookings do |t|
      remove_column :bookings, :passenger_id
      add_reference :bookings, :passenger, foreign_key: true
      t.timestamps
    end
  end
end
