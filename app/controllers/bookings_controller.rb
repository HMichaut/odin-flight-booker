class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight_id = params[:flight_id]
    @passenger_number = params[:passenger_number].to_i
    @datetime = Flight.find(@flight_id).start_datetime
    @start_airport = Flight.find(@flight_id).start_airport
    @stop_airport = Flight.find(@flight_id).stop_airport
    @passenger_array = []
    @passenger_number.times do
      @booking.passengers.build
    end
  end

  def create
    @flight_id = params[:flight_id]
    @booking = Booking.new(flight_id: @flight_id)
    @booking.save
    booking_params[:passengers_attributes].each do |_k, v|
      new_passenger = Passenger.new(name: v[:name], email: v[:email], booking_id: @booking.id.to_i)
      new_passenger.save
    end
    redirect_to "/flights#index"
  end

  private

  def booking_params
    params.require(:booking).permit({passengers_attributes: [:name, :email]}, flight_id: [])
  end
end
