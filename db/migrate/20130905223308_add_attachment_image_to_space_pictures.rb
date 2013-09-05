class AddAttachmentImageToSpacePictures < ActiveRecord::Migration
  def self.up
    change_table :space_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :space_pictures, :image
  end
end
