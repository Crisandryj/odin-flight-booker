class BookingsController < ApplicationController
  def new
    @booking = Booking.new()
    @passengers = params[:passengers]
    @flight_id = params[:flight_id][1]
    @start_date_time = params[:start_date_time]
    @passengers.to_i.times {@booking.passengers.build}
    # raise params.inspect
  end

  def create
    raise params.inspect
  end

  private


end
