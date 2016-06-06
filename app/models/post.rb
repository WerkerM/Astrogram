class Post < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :astronaut, class_name: "User"
  has_many :comments
  validates_with PosterIsAstronaut

end
