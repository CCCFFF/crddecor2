class User < ActiveRecord::Base

has_many :homes
has_many :spaces, :through => :homes
has_many :space_pictures, :through => :spaces
has_many :home_pictures, :through => :homes

  #has_secure_password
  validates :email, :presence => true, :uniqueness => true
end
