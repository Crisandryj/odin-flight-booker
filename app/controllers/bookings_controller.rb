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
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to root
      flash[:notice] = "You booked."
    else
      flash[:alert] = "You didnt book."
  end

  private
  
  def booking_params
    params.require()
  end


end
