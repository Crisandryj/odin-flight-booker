class AddNewColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :booking_id, :integer, foreign_key: true
    add_column :flights, :passenger_id, :integer, foreign_key: true
  end
end
