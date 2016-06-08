class User < ApplicationRecord
  has_many :posts, foreign_key: "astronaut_id"
  has_many :following, foreign_key: "user_id", class_name: "Follow"
  has_many :followed, foreign_key: "astronaut_id", class_name: "Follow"
  has_many :comments

  validates_presence_of :name, :username, :email

  has_secure_password

  def gen_email_token
    if self.email_token.blank?
      self.email_token = SecureRandom.urlsafe_base64.to_s
    end
  end

  def verify
    self.confirmed = true
    self.email_token = nil
  end

  def astronaut?
    return self.astronaut
  end

  def followed_by?(user)
    self.followed.where(user: user).any? ? true : false
  end

  def headshot
    if self.astronaut?
      file = (id.to_s.last)
      file == "0" ? file = "1" : file
      file + '.png'
    else
      self.id % 2 == 0 ? 'earthling.png' : 'earthling2.png'
    end
  end

end
