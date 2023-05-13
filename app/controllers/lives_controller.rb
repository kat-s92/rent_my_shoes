class LivesController < ApplicationController
  # before_action :set_review, only: %i[show]

  def index
    @lives = Life.all
    # @reviews = Review.where()
    # raise
    @markers = @lives.geocoded.map do |life|
      {
        lat: life.latitude,
        lng: life.longitude,
        info_window: render_to_string(partial: "popup", locals: { life:life})
      }
    end
  end

  def show
    @life = Life.find(params[:id])
    @reviews = Review.where(life_id: @life.id)
  end

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(life_params)
    @life.user = current_user
    if @life.save
      redirect_to life_path(@life)
    else
      render 'lives/new', status: :unprocessable_entity
    end
  end

  def destroy
    @life = Lives.find(params[:id])
    @life.destroy
    redirect_to lives_path, status: :see_other
  end

  # raise
  private

  def life_params
    params.require(:life).permit(:name, :details, :photo)
  end

  # def set_review
  #   @review = Review.find(params[:life_id])
  # end
end
