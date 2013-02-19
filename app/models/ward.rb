class Ward < ActiveRecord::Base
  attr_accessible :name
  has_many :streets
  has_many :PYDWGN
end
