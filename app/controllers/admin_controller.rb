class AdminController < ApplicationController
  include Pagy::Backend
  before_action :authenticate_admin!
  def index
    @admin = current_user.role == "admin"
    @pagy, @landings = pagy(Landing.order(updated_at: :desc), limit: 7) # @landings = Landing.order(updated_at: :desc)
    @newsletters = NewsletterEmail.order(created_at: :desc)
  end

  def destroy_landing
    @landing = Landing.find(params[:id])
    @landing.destroy!

    respond_to do |format|
      format.html { redirect_to admin_path, notice: "Landing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def destroy_newsletter
    @newsletter = NewsletterEmail.find(params[:id])
    @newsletter.destroy!

    respond_to do |format|
      format.html { redirect_to admin_path, notice: "Newsletter was successfully destroyed." }
      format.json { head :no_content }
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
