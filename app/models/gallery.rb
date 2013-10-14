class Gallery < ActiveRecord::Base
  attr_accessible :name, :image
  has_attached_file :image, :styles => {primary: "800x480#", :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates :name, presence: true
  validates :image, :attachment_presence => true
validates_with AttachmentPresenceValidator, :attributes => :image
end
