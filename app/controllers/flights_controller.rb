class FlightsController < ApplicationController
  def index
    @booking = Booking.new
    if flight_params.present?
      date_to_compare = Flight.find_by(id: flight_params[:start_datetime]).start_datetime.to_date
      @flights = Flight.where(start_airport: Airport.find_by(id: flight_params[:start_airport])).and(Flight.where(stop_airport: Airport.find_by(id: flight_params[:stop_airport]))).and(Flight.where("DATE(start_datetime) = ?", date_to_compare))
    else
      @flights = Flight.all 
    end
    @airport_options = Airport.all.map{ |u| [ u.code, u.id ]}.uniq { |x| x[0] }
    @date_options = Flight.all.map{ |u| [ u.start_datetime.strftime("%d/%m/%Y"), u.id ]}.uniq { |x| x[0] }
  end

  private

  def flight_params
    params.permit(:start_airport, :stop_airport, :passenger_number, :start_datetime, :commit)
  end
end
