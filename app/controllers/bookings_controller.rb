class BookingsController < ApplicationController
  def new
  	@flight = Flight.find(params[:flight_id].keys[0].to_i)
    if params[:passengers].to_i <= @flight.passengers
      @booking = Booking.new
      @passengers = params[:passengers]
      params[:passengers].to_i.times do
        @booking.user.build
      end
    
    end

  end

	def create
		booking = Booking.create(flight_id: params[:flight_id].keys[0].to_i, num_booking: create_booking_number, total: params[:passengers])
		params[:booking][:user_attributes].each do |key, value|
		  user = User.create(name: value[:name], email: value[:email])
		  user.user_bookings.create(booking: booking)
		end
    flight = Flight.find(booking.flight_id)
    current_passengers = flight.passengers.to_i - params[:passengers].to_i

    # flight.update_column(passengers: current_passengers)
    flight.update(passengers: current_passengers)
    redirect_to booking
	end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @passengers = @booking.user

  end

  def index
  end

  private
    def create_booking_number
      book_num = "#{rand(1000..2000)}-#{rand(0..9)}"
    end
end
