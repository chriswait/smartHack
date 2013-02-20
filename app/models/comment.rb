class Comment < ActiveRecord::Base
  belongs_to :doodle
  attr_accessible :doodle_id, :comment, :user
end
