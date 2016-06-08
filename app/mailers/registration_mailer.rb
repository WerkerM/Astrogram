class RegistrationMailer < ApplicationMailer
  default from: 'astrogram.mailer@gmail.com'

  def confirmation_email(user)
    token = user.gen_email_token
    user.email_token = token
    user.save!
    @user = user
    if Rails.env.production?
      @url  = "http://astrogram.herokuapp.com/confirm_email/#{token}"
    else
      @url  = "http://localhost:3000/confirm_email/#{token}"
    end
    mail(from: 'astrogram.mailer@gmail.com', to: @user.email, subject: 'Verify Your Astrogram Account!')
  end


end
