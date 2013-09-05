class CreateSpaceVotes < ActiveRecord::Migration
  def change
    create_table :space_votes do |t|
      t.integer :user_id
      t.integer :space_id

      t.timestamps
    end
  end
end
