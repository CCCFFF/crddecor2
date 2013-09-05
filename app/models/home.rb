class Home < ActiveRecord::Base
  has_attached_file :image
  belongs_to :user
  has_many :spaces
  has_many :space_pictures, :through => :spaces
  has_many :thoughts, :through => :space_pictures


  validates_attachment :image
end

