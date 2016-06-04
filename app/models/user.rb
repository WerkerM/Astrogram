class User < ApplicationRecord
  # has_many :posts, foreign_key: "astronaut_id"
  has_many :follows, foreign_key: "user_id"
  has_many :follows, foreign_key: "astronaut_id"
  has_many :comments

  has_secure_password


  def set_confirmation_token
    if self.email_token.blank?
      self.email_token = SecureRandom.urlsafe_base64.to_s
    end
  end
  private

  def validate_email
    self.email_confirmed = true
    self.email_token = nil
  end


end
