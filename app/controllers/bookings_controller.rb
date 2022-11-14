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

      respond_to do |format|
      if @booking.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(user: @passenger).welcome_email.deliver_later

        format.html { redirect_to(@passenger, notice: 'User was successfully created.') }
        format.json { render json: @passenger, status: :created, location: @passenger }
      else
        format.html { render action: 'new' }
        format.json { render json: @passenger.errors, status: :unprocessable_entity }
      end
    end

      redirect_to root_path, notice: "Congrats on your booking"
    else
      flash.now[:alert] = "Failed to book."
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date_time,:passenger_id,:flight_id,
                                    :number_of_passengers,passengers_attributes:[:id, :name, :email])
  end


end
