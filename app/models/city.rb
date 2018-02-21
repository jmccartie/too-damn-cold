class City < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude

  validates_uniqueness_of :longitude, scope: :latitude

  def coordinates
    "#{latitude},#{longitude}"
  end
end
