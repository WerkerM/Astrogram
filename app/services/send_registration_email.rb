class SendRegistrationEmail
  def self.send(user)
    RegistrationMailer.confirmation_email(user).deliver_now
  end
end