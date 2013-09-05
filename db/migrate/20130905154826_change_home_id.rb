class ChangeHomeId < ActiveRecord::Migration
  def change
    remove_column :votes, :movie_id
    add_column :votes, :home_id, :integer
  end
end
