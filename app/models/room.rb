class Room < ApplicationRecord
  belongs_to :amenity
  belongs_to :rule
  belongs_to :filter
  accepts_nested_attributes_for :amenity
  accepts_nested_attributes_for :rule
  accepts_nested_attributes_for :filter
end
