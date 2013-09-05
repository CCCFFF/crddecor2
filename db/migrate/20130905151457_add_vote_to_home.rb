class AddVoteToHome < ActiveRecord::Migration
  def change
    add_column :homes, :vote_tally, :integer, :default => 0

  end
end
