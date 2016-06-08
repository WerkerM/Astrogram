class EmailTokenGenerator
  def self.generate(user)
    token = user.gen_email_token
    user.email_token = token
    user.save!
    [token, user]
  end
end
