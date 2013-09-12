class HomePicture < ActiveRecord::Base
  belongs_to :home
  has_attached_file :image

  validates_attachment :image, content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }, size: {less_than: 2.megabytes}
end
