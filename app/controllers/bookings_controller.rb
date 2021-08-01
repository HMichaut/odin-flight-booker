class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight_id = Booking.find(params[:flight_id])
    @passenger_number = Booking.find(params[:passenger_number])
    @datetime = Flight.find(@flight_id).start_datetime
    @start_airport = Flight.find(@flight_id).start_airport
    @stop_airport = Flight.find(@flight_id).stop_airport
    @passenger_number.times do
      Passenger.new(booking_id: @booking.id)
    end
  end
end
