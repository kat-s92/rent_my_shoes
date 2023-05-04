class LivesController < ApplicationController
  def delete
    @life = Lives.find(params[:id])
    @life.destroy
    redirect_to lives_path, status: :see_other
  end
end
