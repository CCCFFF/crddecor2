class AddImageToHomePictures < ActiveRecord::Migration
  def self.up
    add_attachment :home_pictures, :image
  end

  def self.down
    remove_attachment :home_pictures, :image
  end

end
