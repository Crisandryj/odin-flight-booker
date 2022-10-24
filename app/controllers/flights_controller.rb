class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def index
    @flights = Flight.all
  end

end
