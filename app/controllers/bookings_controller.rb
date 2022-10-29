class BookingsController < ApplicationController
  def new
    @booking = Booking.new(number_of_passengers: params[:passengers], flight_id:params[:flight_id])
    @arrival_airport = params[:arrival_airport]
     # raise params.inspect
  end

  def create
    raise params.inspect
  end

  private


end
