class AddAttachmentImageToHomePictures < ActiveRecord::Migration
  def self.up
    change_table :home_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :home_pictures, :image
  end
end
