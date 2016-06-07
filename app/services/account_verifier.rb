class AccountVerifier
  def self.with_email_verification(user)
    user && user.authenticate(login_params[:password]) && user.confirmed
  end

  def self.without_email_verification(user)
    user && !user.confirmed
  end
end
