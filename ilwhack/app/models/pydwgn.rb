class Pydwgn < ActiveRecord::Base
  belongs_to :ward
  attr_accessible :latitude, :longitude, :name, :value
end
