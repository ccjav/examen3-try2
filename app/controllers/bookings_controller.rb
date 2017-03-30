class BookingsController < ApplicationController
  def new
  	@flight = Flight.find(params[:flight_id].keys[0].to_i)

    @booking = Booking.new
    params[:passengers].to_i.times do
      @booking.user.build
    end
  end

	def create
		booking = Booking.create(flight_id: params[:flight_id].keys[0].to_i)
		params[:booking][:user_attributes].each do |key, value|
		  user = User.create(name: value[:name], email: value[:email])
		  user.user_bookings.create(booking: booking)
		end
	end

  def show
  end

  def index
  end
end
