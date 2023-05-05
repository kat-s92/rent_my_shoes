class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new()
    @booking.save
    redirect_to new_life_booking(@booking)
  end

end
