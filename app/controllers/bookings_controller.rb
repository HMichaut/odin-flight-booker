class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight_id = params[:flight_id]
    @passenger_number = params[:passenger_number].to_i
    @datetime = Flight.find(@flight_id).start_datetime
    @start_airport = Flight.find(@flight_id).start_airport
    @stop_airport = Flight.find(@flight_id).stop_airport
  end
end
