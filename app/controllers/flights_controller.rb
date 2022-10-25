class FlightsController < ApplicationController

  def new
    # @airports = Airport.all.map{ |a| [a.id, a.code] }
    @flight = Flight.new
  end

  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [a.id, a.code] }
  end

end
