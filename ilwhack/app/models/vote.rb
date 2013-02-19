class Vote < ActiveRecord::Base
  belongs_to :doodle
  attr_accessible :isVandilism
end
