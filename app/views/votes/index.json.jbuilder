json.array!(@votes) do |vote|
  json.extract! vote, :user_id, :movie_id
  json.url vote_url(vote, format: :json)
end
