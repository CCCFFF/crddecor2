class SpacePicture < ActiveRecord::Base
  belongs_to :space
  has_many :thoughts

  has_attached_file :image, :styles => { :thumb => "200x200>" }

  validates_attachment :image, content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }, size: {less_than: 2.megabytes}
end
