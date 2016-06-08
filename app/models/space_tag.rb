class SpaceTag < ApplicationRecord
  belongs_to :post
  validates_presence_of :x, :y, :x, :relational_body, :units
  validates :x, :y, :z, inclusion: { in: %w(km, Mkm, LY) }
end