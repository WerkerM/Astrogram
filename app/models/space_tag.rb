class SpaceTag < ApplicationRecord
  belongs_to :post
  validates_presence_of :x, :y, :x, :relational_body, :units
  validates :units, inclusion: { in: ["km", "Mkm", "LY"] }
end