class WardValue < ActiveRecord::Base
  belongs_to :ward
  attr_accessible :recorded, :value
end
