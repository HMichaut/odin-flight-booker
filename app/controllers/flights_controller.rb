class FlightsController < ApplicationController
  def index
    @flights = Flight.all unless params.present?
    @flights = Flight.where(start_airport: Airport.find_by(code: flight_params[:start_airport])).and(Flight.where(stop_airport: Airport.find_by(code: flight_params[:stop_airport]))) if params.present?
    @airport_options = Airport.all.map{ |u| [ u.code, u.id ]}
    @date_options = Flight.all.map{ |u| [ u.start_datetime.strftime("%d/%m/%Y"), u.id ]}
  end

  private

  def flight_params
    params.permit(:start_airport, :stop_airport, :passenger_number, :start_datetime)
  end
end
