class FlightsController < ApplicationController

  def new
    @flight = Flight.new()
  end

  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [ a.code, a.id] }
    @dates = @flights.map {|f| [f.start_date_time.strftime("%m/%d/%Y"),f.start_date_time]}.uniq
    @searched_flights = Flight.all.where(flight_params)
  end


  def create
    raise params.inspect
  end

  private
  def flight_params
    params.permit(:departure_airport,:arrival_airport,:start_date_time)
  end

end
