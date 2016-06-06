class Post < ApplicationRecord
  belongs_to :astronaut, class_name: "User"
  has_many :comments

  validate :poster_is_astronaut

  def poster_is_astronaut
    unless astronaut.astronaut?
      errors.add(:astronaut, "Poster needs to be an astronaut")
    end
  end
end
