class AccountVerifier
  def self.with_email_verification(user, login_params)
    user && user.confirmed && user.authenticate(login_params[:password])
  end

  def self.without_email_verification(user)
    user && !user.confirmed
  end
end
