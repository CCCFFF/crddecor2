class Space < ActiveRecord::Base
  belongs_to :home
  has_many :space_pictures
  has_many :thoughts, :through => :space_pictures
end
