class LivesController < ApplicationController

  def new
    @live = Life.new
  end

  def create
    @life = Life.new(life_params)
    @life.save
    redirect_to life_path(@life)
  end

  def destroy
    @life = Lives.find(params[:id])
    @life.destroy
    redirect_to lives_path, status: :see_other
  end

  def index
    @lives = Life.all
  end

  def show
    @life = Life.find(params[:id])
  end

  private

  def life_params
    params.require(:life).permit(:name, :details, :user_id)
  end
end
