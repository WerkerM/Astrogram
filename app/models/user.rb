class User < ApplicationRecord
  has_many :posts, foreign_key: "astronaut_id", dependent: :destroy
  has_many :following, foreign_key: "user_id", class_name: "Follow", dependent: :destroy
  has_many :followed, foreign_key: "astronaut_id", class_name: "Follow", dependent: :destroy
  has_many :comments, dependent: :destroy

  HEADSHOTS = {
    "Andreas Mogensen": "https://i.imgur.com/umA9QK1.jpg",
    "Antoin Campbell": "https://i.imgur.com/gQsg37c.jpg",
    "Aydyn Aimbetov": "https://i.imgur.com/xMLIGkR.jpg",
    "Buzz Aldrin": "https://i.imgur.com/WZB2NMK.jpg",
    "Buzz Lightyear": "https://i.imgur.com/3KlA113.jpg",
    "Chris Hadfield": "https://i.imgur.com/zX7J3GU.jpg",
    "Ellen S. Baker": "https://i.imgur.com/vuqwxKE.gif",
    "Helen Sharman": "https://i.imgur.com/nkc31Gs.jpg",
    "James Adamson": "https://i.imgur.com/RkbTVBk.jpg",
    "Jean-Loup Chrétien": "https://i.imgur.com/zbitheY.jpg",
    "Jean-Luc Picard": "https://i.imgur.com/lRv8ta1.jpg",
    "Joseph M. Acaba": "https://i.imgur.com/95o2LMz.jpg",
    "Justin Nazari": "https://i.imgur.com/eF8KCDi.jpg",
    "Klaus-Dietrich Flade": "https://i.imgur.com/abY8fFr.jpg",
    "Koichi Wakata": "https://i.imgur.com/FfxQwNz.jpg",
    "Laika": "https://i.imgur.com/LFLcU3x.jpg",
    "Liu Yang": "https://i.imgur.com/eRe3qDg.jpg",
    "Marcos Pontes": "https://i.imgur.com/yPP2er8.jpg",
    "Mark Shuttleworth": "https://i.imgur.com/cf8bjCN.jpg",
    "Maurizio Cheli": "https://i.imgur.com/umA9QK1.jpg",
    "Michael Foale": "https://i.imgur.com/Pj4DwGM.jpg",
    "Naoko Yamazaki": "https://i.imgur.com/TXGRmfT.jpg",
    "Neil Armstrong": "https://i.imgur.com/y7cNymq.jpg",
    "Pavel Popovich": "https://i.imgur.com/cIgLk52.jpg",
    "Philip K. Chapman": "https://i.imgur.com/G08Xzdk.jpg",
    "Reinhold Ewald": "https://i.imgur.com/6DnrO4d.jpg",
    "Roberta Bondar": "https://i.imgur.com/QOSizqi.jpg",
    "Samantha Cristoforetti": "https://i.imgur.com/xKvFfzc.jpg",
    "Thomas Pesquet": "https://i.imgur.com/7cML8s3.jpg",
    "Timothy Peake": "https://i.imgur.com/AggX5ZN.jpg",
    "Valentina Tereshkova": "https://i.imgur.com/hkThMqW.jpg",
    "Viktor M. Afanasyev": "https://i.imgur.com/2bp6zYF.jpg",
    "Yang Liwei": "https://i.imgur.com/9iYvY8o.jpg",
    "Yuri Gagarin": "https://i.imgur.com/N5lyl1t.jpg"
  }

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
      HEADSHOTS[self.name.to_sym]
    elsif self.username == "woody"
      "woody.png"
    else
      self.id % 2 == 0 ? 'earthling2.png' : '5.png'
    end
  end

end
