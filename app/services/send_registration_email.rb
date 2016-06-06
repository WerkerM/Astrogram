class SendRegistrationEmail
  def self.send(user)
    if user.save
      RegistrationMailer.confirmation_email(user).deliver_now
      format.html { redirect_to(user, notice: 'User was successfully created.') }
      format.json { render json: user, status: :created, location: user }
    else
      format.html { render action: 'new' }
      format.json { render json: user.errors, status: :unprocessable_entity }
    end
  end
end