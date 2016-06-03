class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :astronaut, class_name: "User"
end
