json.array!(@thoughts) do |thought|
  json.extract! thought, :text, :user_id, :space_picture_id
  json.url thought_url(thought, format: :json)
end
