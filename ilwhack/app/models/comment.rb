class Comment < ActiveRecord::Base
  belongs_to :doodle
  attr_accessible :comment, :user
end
