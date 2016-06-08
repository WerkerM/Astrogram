class EnvironmentSelector

  def self.host_url(token)
    if Rails.env.production?
      url = "http://astrogram.herokuapp.com/confirm_email/#{token}"
    else
      url = "http://localhost:3000/confirm_email/#{token}"
    end
  end
end
