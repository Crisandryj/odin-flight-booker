class BookingsController < ApplicationController
  def new
    @booking = Booking.new()
     raise params.inspect
  end

  def create
    raise params.inspect
  end

  private


end
