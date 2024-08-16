class LeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user_email.subject
  #
  def new_lead_email(landing)
    @landing = landing
    admins = User.where(role: 1)
    mail to: admins.pluck(:email), subject: 'New Lead Created'
  end
end
