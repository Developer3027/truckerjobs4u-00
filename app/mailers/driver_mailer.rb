class DriverMailer < ApplicationMailer
  def new_driver_email(landing)
    @landing = landing
    # admins = User.where(role: 1)
    mail to: landing.email, subject: "Thank you for contacting us"
  end
end
