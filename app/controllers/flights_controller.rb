class FlightsController < ApplicationController

  def new
    # @airports = Airport.all.map{ |a| [a.id, a.code] }
    @flight = Flight.new
  end

  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [ a.code, a.id] }
    @dates = @flights.map {|f| [f.start_date_time.strftime('%m/%d/%Y'),f.start_date_time]}
    @searched_flights = Flight.where(flight_params) unless Flight.where(flight_params).nil?
  end


  def create
    raise params.inspect
  end

  private
  def flight_params
    params.permit(:departure_airport,:arrival_airport,:start_date_time,:number_of_passengers)
  end


end
