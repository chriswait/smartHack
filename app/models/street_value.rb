class StreetValue < ActiveRecord::Base
  belongs_to :street
  attr_accessible :animal_faeces, :bin_count, :business, :confectionary, :construction, :detritus, :dog_foul, :domestic, :drinks, :fast_food, :fly_posting, :graffiti, :number_overflowing, :other, :pedestrian_individual, :recorded, :smoking, :vandalism, :weeds
end
