class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  # end

  # def show
  #   @review = Review.find(params[:id])
  # end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    raise

    if @review.save
      redirect_to life_booking_review(.... @review)
    else
      render '...reviews/new', status: :unprocessable_entity
    end
  end

  private

  # def set_life_booking
  #   @life = Life.find(params[:life_id])
  #   @booking = Booking.find(params[:life_id])
  # end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
