class BookingsController < ApplicationController
  before_action :set_life, only: %i[create new]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.life = @life
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/new', status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_life
    @life = Life.find(params[:life_id])
  end

  def booking_params
    params.require(:booking).permit(:life_id)
  end
end
