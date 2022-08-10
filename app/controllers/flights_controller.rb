class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @flights = Flight.where(departure_id: params[:departure_id], arrival_id: params[:arrival_id])
  end
end
