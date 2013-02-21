class Vote < ActiveRecord::Base
  belongs_to :doodle
  attr_accessible :doodle_id, :is_vandalism
end
