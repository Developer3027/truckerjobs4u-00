class AdminController < ApplicationController
  before_action :authenticate_admin!
  def index
    @admin = current_user.role == "admin"
    @landings = Landing.all
  end

  def update
    @landing = Landing.find(params[:id])

    if @landing.update(landing_params)
      redirect_to @landing, notice: "Landing was successfully updated."
    else
      render :edit
    end
  end

  private
  def authenticate_admin!
    if !user_signed_in? || current_user.role != "admin"
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end

  def landing_params
    params.require(:landing).permit(:content)
  end
end
