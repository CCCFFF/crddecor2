class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :user_id
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
