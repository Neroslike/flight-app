class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    if params[:date]
      @date = hash_to_date(params[:date])
      @flights = Flight.where(departure_id: params[:departure_id], arrival_id: params[:arrival_id], start: (@date..@date+1.month))
    end
  end

  private

  def hash_to_date(hash)
    arr = %w[month year].map { |d| hash["#{d}"].to_i }
    Date.new(arr[1], arr[0], 1)
  end
end
