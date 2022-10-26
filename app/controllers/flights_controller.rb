class FlightsController < ApplicationController

  def new
    # @airports = Airport.all.map{ |a| [a.id, a.code] }
    @flight = Flight.new
  end

  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [ a.code, a.id] }
    @flights.each do |flight|
      p flight
      if flight.departure_airport_id > 0
        @departure_airports = []
        @departure_airports << flight
        elsif
        flight.arrival_airport_id > 0
          @arrival_airports = []
          @arrival_airports << flight
        end
      end
  @dates = @departure_airports.map {|f| [f.start_date_time,f.id]}
end


  def create
    @flight = Flight.create(params)
    raise params.inspect
  end

  private
  def params
    params.requrie(:flight).permit(Airport[:id,:code])
  end


end
