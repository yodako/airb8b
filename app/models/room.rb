class Room < ApplicationRecord
  belongs_to :amenity
  belongs_to :rule
  belongs_to :filter
  has_many :reviews
  has_many :reservations
  accepts_nested_attributes_for :amenity
  accepts_nested_attributes_for :rule
  accepts_nested_attributes_for :filter
  # geocoded_by :address, :latitude, :longitude
  # before_validation :geocode
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode if: Room.new { |a| a.latitude_changed? or a.longitude_changed? }
  # geocoded_by :address
  # after_validation :geocode, if: Room.new { |a| a.address_changed? }
end
