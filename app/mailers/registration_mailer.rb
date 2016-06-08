class RegistrationMailer < ApplicationMailer
  default from: 'astrogram.mailer@gmail.com'

  def confirmation_email(user)
    token, @user = EmailTokenGenerator.generate(user)
    @url = EnvironmentSelector.host_url(token)
    mail(from: 'astrogram.mailer@gmail.com', to: @user.email, subject: 'Verify Your Astrogram Account!')
  end


end
