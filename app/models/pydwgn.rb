class Pydwgn < ActiveRecord::Base
  belongs_to :ward
  attr_accessible :ward_id, :latitude, :longitude, :name, :value
end
