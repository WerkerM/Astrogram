class Follow < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :user
  belongs_to :astronaut, class_name: "User"
  
  validates_with PosterIsAstronaut
  validates_presence_of :user, :astronaut

end
