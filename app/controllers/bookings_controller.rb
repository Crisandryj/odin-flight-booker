class BookingsController < ApplicationController
  def new
    @booking = Booking.new(number_of_passengers: @passengers, flight_id: flight_params)
    # raise params.inspect
  end

  def create
    raise params.inspect
  end

  private

  def flight_params
    params.require(:flight_id)
  end


end
