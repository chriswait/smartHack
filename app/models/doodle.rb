class Doodle < ActiveRecord::Base
  belongs_to :street
  has_many :votes
  has_many :comments
  attr_accessible :street_id, :latitude, :longitude, :image
  has_attached_file :image, 
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :styles => { 
      :medium => "300x300>",
      :thumb => "100x100>",
      :super_thumb => "32x32>"
    },
    :dropbox_options => {
      :unique_filename => true
    }
  validates :image, :attachment_presence => true
end
