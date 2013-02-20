class Street < ActiveRecord::Base
  belongs_to :ward
  has_many :street_values
  has_many :doodles
  attr_accessible :ward_id, :animal_faeces, :bin_count, :business, :confectionary, :construction, :detritus, :dog_foul, :domestic, :drinks, :fast_food, :fly_posting, :graffiti, :latitude, :longitude, :name, :number_overflowing, :other, :pedestrian_individual, :postcode, :smoking, :vandalism, :weeds
end
