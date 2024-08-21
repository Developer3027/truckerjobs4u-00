class NewsletterMailer < ApplicationMailer
  def new_newsletter_email(newsletter_email)
    @newsletter_email = newsletter_email
    # admins = User.where(role: 1)
    mail to: newsletter_email.email, subject: "Thank you for signing up!"
  end
end
