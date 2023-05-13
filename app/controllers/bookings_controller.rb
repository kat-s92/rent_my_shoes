class BookingsController < ApplicationController
  before_action :set_life, only: %i[create new show]

  def index
    @bookings = Booking.all
    @my_bookings = current_user.bookings
    # @my_rentals = Booking.where(life: current_user)
    @my_rentals = current_user.lives.first.bookings
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.life = @life
    @booking.user = current_user
    if @booking.save
      redirect_to life_booking_path(@life, @booking)
    else
      render 'bookings/new', status: :unprocessable_entity
    end
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
    params.require(:booking).permit(:life_id, :start_date, :end_date)
  end
end
