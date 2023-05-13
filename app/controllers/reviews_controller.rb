require 'date'
class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    # if Date.today > @booking[:end_date]
    @review = Review.new(review_params)
    @review.life = Life.find(params[:life_id])
    @review.booking = Booking.find(params[:booking_id])
    @review.user = current_user
    @review.save
    redirect_to life_path(params[:life_id])
    # render 'new_life_booking_review_path', status: :unprocessable_entity
  end

  private



  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
