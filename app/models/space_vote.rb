class SpaceVote < ActiveRecord::Base
   belongs_to :user
  belongs_to :space

  validates :user_id, :presence => true, :uniqueness => { :scope => :space_id, :message => 'Already voted for that home' }

  after_create :update_space_tally

  def update_space_tally
    self.space.space_vote_tally += 1
    self.space.save
  end

end
