class AddSpaceVoteTallyToSpace < ActiveRecord::Migration
  def change
    add_column :spaces, :space_vote_tally, :integer, :default => 0
  end
end
