class BookingsController < ApplicationController
  def new
    @booking = Booking.new(number_of_passengers: params[:passengers],
                          start_date_time: params[:start_date_time],
                          flight_id:params[:flight_id][1])
    @passenger = Passenger.new()
    @booking.number_of_passengers.times {@booking.passengers.build}
    # raise params.inspect
  end

  def create
    # raise params.inspect
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_path, notice: "Congrats on your booking"
    else
      flash.now[:alert] = "Failed to book."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date_time,:passenger_id,:flight_id,
                                    :number_of_passengers,passengers_attributes:[:id, :name, :email])
  end

  def passenger_params
    params.
  end


end
