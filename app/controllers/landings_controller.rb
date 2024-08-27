class LandingsController < ApplicationController
  # include Pagy::Backend
  before_action :authenticate_user!, only: %i[ show new edit update destroy ]
  before_action :set_landing, only: %i[ show edit update destroy ]

  # GET /landings or /landings.json
  def index
    @landings = Landing.all
  end

  # GET /landings/1 or /landings/1.json
  def show
  end

  # GET /landings/new
  def new
    @landing = Landing.new
  end

  # GET /landings/1/edit
  def edit
    @landing = Landing.find(params[:id])
  end

  # POST /landings or /landings.json
  def create
    @landing = Landing.new(landing_params)

    if landing_params[:pp_check] == "0" || landing_params[:pp_check] == false
      redirect_to root_path, alert: "Please check the privacy policy"
      # render :new
    else
      respond_to do |format|
        if @landing.save
          # Create a new user using the email field from the landing form
          # User.create(email: params[:landing][:email], password: params[:landing][:last_name])

          # Send an email to the admin
          LeadMailer.new_lead_email(@landing).deliver_now

          # Send an thank you email to the driver
          DriverMailer.new_driver_email(@landing).deliver_now

          format.html { redirect_to root_path, notice: "Thank you! We will be in touch soon!" }
          format.json { render :show, status: :created, location: @landing }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @landing.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /landings/1 or /landings/1.json
  def update
    respond_to do |format|
      if @landing.update(landing_params)
        format.html { redirect_to admin_path, notice: "Landing was successfully updated." }
        format.json { render :show, status: :ok, location: @landing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @landing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landings/1 or /landings/1.json
  def destroy
    @landing.destroy!

    respond_to do |format|
      format.html { redirect_to admin_path, notice: "Landing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing
      @landing = Landing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def landing_params
      params.require(:landing).permit(:first_name, :last_name, :email, :phone, :location, :content, :pp_check)
    end
end
