class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.text :text
      t.integer :user_id
      t.integer :space_picture_id

      t.timestamps
    end
  end
end
