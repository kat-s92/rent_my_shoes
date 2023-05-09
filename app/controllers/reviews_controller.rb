class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    if @review.save
      redirect_to life_booking_path(@life, @booking)
    else
      render 'reviews/new', status: :unprocessable_entity
    end

  end
end
