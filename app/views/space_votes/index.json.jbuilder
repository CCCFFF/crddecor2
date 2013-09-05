json.array!(@space_votes) do |space_vote|
  json.extract! space_vote, :user_id, :space_id
  json.url space_vote_url(space_vote, format: :json)
end
