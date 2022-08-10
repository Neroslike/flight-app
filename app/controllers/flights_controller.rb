class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    if params[:depart_date]
      @date = hash_to_date(params[:depart_date]) if params[:depart_date]
      @flights = Flight.where(departure_id: params[:departure_id], arrival_id: params[:arrival_id], start: (@date..@date+1.month))
    end
  end

  private

  def hash_to_date(hash)
    arr = %w[1 2 3].map { |d| hash["date(#{d}i)"].to_i }
    Date.new(arr[0], arr[1], arr[2])
  end
end
