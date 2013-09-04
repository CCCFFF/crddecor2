class CreateSpaceCategories < ActiveRecord::Migration
  def change
    create_table :space_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
