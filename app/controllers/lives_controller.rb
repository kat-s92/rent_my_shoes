class LivesController < ApplicationController

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(life_params)
    @life.save
    redirect_to new_life_path(@life)
  end

  private

  def life_params
    params.require(:life).permit(:name, :details, :user_id)
  end

end
