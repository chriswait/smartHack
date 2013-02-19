class Doodle < ActiveRecord::Base
  belongs_to :street
  has_many :votes
  has_many :comments
  attr_accessible :latitude, :longitude, :image
  has_attached_file :image, :styles => { 
                                :medium => "300x300>",
                                :thumb => "100x100>",
                                :super_thumb => "32x32>"
  }
  validates :image, :attachment_presence => true
end
