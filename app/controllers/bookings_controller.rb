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
    # raise params.inspect
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to root_path, notice: "Congrate on your booking"
    else
      flash[:alert] = "You didnt book."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,:passenger_id,:number_of_passengers,passengers_attributes:[:id, :name, :email])
  end


end
