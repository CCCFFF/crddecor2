class CreateSpacePictures < ActiveRecord::Migration
  def change
    create_table :space_pictures do |t|
      t.string :name
      t.string :source
      t.integer :space_id

      t.timestamps
    end
  end
end
