class Home < ActiveRecord::Base
 belongs_to :user
  has_many :spaces
  has_many :space_pictures, :through => :spaces
  has_many :thoughts, :through => :space_pictures
  has_many :home_pictures
end

