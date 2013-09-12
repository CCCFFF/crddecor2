class AddImageToSpacePictures < ActiveRecord::Migration
  def self.up
    add_attachment :space_pictures, :image
  end

  def self.down
    remove_attachment :space_pictures, :image
  end

end
