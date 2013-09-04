class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :category
      t.string :size
      t.integer :home_id

      t.timestamps
    end
  end
end
