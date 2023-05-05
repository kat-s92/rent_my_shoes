class LivesController < ApplicationController
  def index
    @lives = Life.all
  end

  def show
    @life = Life.find(params[:id])
  end

  def destroy
    @life = Lives.find(params[:id])
    @life.destroy
    redirect_to lives_path, status: :see_other
  end
end
