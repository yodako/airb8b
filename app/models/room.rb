class Room < ApplicationRecord
  belongs_to :amenity
  belongs_to :rule
  belongs_to :filter
  has_many :reviews
  has_many :reservations
  accepts_nested_attributes_for :amenity
  accepts_nested_attributes_for :rule
  accepts_nested_attributes_for :filter
end
