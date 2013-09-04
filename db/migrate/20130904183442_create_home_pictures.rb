class CreateHomePictures < ActiveRecord::Migration
  def change
    create_table :home_pictures do |t|
      t.string :name
      t.integer :home_id
      t.string :source

      t.timestamps
    end
  end
end
