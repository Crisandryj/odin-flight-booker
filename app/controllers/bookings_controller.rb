class BookingsController < ApplicationController
  def new
    @booking = Booking.new(number_of_passengers: params[:passengers],
                          start_date_time: params[:start_date_time],
                          flight_id:params[:flight_id][1])
    @passenger = Passenger.new()
    @booking.number_of_passengers.times {@booking.build_passenger}
    # raise params.inspect
  end

  def create
    # raise params.inspect
    @booking = Booking.new(booking_params)
    if @booking.save(:validate => false)
      redirect_to root_path, notice: "Congrats on your booking"
    else
      flash.now[:alert] = "You didnt book."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date_time,:passenger_id,:flight_id,
                                    :number_of_passengers,passengers_attributes:[:id, :name, :email])
  end


end
