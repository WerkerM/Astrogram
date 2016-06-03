class User < ApplicationRecord
  has_many :posts, foreign_key: "astronaut_id"
  has_many :follows, foreign_key: "user_id"
  has_many :follows, foreign_key: "astronaut_id"
  has_many :comments
end
