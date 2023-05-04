class LivesController < ApplicationController
  def index
    @lives = Life.all
  end

  def show
    @life = Life.find(params[:id])
  end
end
