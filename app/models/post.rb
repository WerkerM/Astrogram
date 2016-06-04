class Post < ApplicationRecord
  belongs_to :astronaut, class_name: "User"
  has_many :comments
end
