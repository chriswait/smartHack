class Ward < ActiveRecord::Base
  attr_accessible :name
  has_many :ward_values
  has_many :streets
  has_many :PYDWGNs
end
