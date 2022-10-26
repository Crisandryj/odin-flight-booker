class FlightsController < ApplicationController

  def new
    # @airports = Airport.all.map{ |a| [a.id, a.code] }
    @flight = Flight.new
  end

  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [ a.code, a.id] }
    @dates = @flights.map {|f| [f.start_date_time.strftime('%m/%d/%Y'),f.id]}
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
