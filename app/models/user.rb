class User < ApplicationRecord
  has_many :posts, foreign_key: "astronaut_id"
  has_many :following, foreign_key: "user_id", class_name: "Follow"
  has_many :followed, foreign_key: "astronaut_id", class_name: "Follow"
  has_many :comments

  has_secure_password

  def set_confirmation_token
    if self.email_token.blank?
      self.email_token = SecureRandom.urlsafe_base64.to_s
    end
  end

  def astronaut?
    return self.astronaut
  end

  private

  def validate_email
    self.email_confirmed = true
    self.email_token = nil
  end
end
