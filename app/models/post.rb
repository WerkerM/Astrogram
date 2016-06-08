class Post < ApplicationRecord
  include ActiveModel::Validations

  has_one :space_tag
  belongs_to :astronaut, class_name: "User"
  has_many :comments
  validates_with PosterIsAstronaut

  mount_uploader :image_url, ImageUploader
end
