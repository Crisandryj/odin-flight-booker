class BookingsController < ApplicationController
  def new
    @booking = Booking.new()
    @passengers = params[:passengers]
  end

  def create
    raise params.inspect
  end

  private


end
