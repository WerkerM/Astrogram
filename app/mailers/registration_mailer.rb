class RegistrationMailer < ApplicationMailer
  default from: 'astrogram.mailer@gmail.com'

  def confirmation_email(user)
    @user = user
    @url  = 'http://astrogram.herokuapp.com'
    mail(to: @user.email, subject: 'Verify Your Astrogram Account!')
  end


end
