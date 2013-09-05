class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :home

  validates :user_id, :presence => true, :uniqueness => { :scope => :home_id, :message => 'Already voted for that home' }

  after_create :update_home_tally

  def update_home_tally
    self.home.vote_tally += 1
    self.home.save
  end
end
