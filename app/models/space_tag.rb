class SpaceTag < ApplicationRecord
  belongs_to :post
  validates_presence_of :polar, :azimuth, :radius, :relational_body, :units
  validates :units, inclusion: { in: ["km", "Mkm", "LY"] }
end