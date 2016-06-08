class Post < ApplicationRecord
  include ActiveModel::Validations

  has_one :space_tag
  belongs_to :astronaut, class_name: "User"
  has_many :comments
  validates_with PosterIsAstronaut
  accepts_nested_attributes_for :space_tag

  mount_uploader :image_url, ImageUploader

  def space_tag_attributes=(attributes)
    space_tag = SpaceTag.new(attributes)
    space_tag.post = self
  end
end
