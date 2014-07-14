class Event < ActiveRecord::Base
  belongs_to :charity
  has_attached_file :cover_image, styles: {
  	thumb:  '151x110>',
  	medium: '306x221>',
  	large:  '864x540>'
  }
  validates_attachment_content_type :cover_image, 
    :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
