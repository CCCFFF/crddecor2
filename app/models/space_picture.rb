class SpacePicture < ActiveRecord::Base
  belongs_to :space
  has_many :thoughts
end
