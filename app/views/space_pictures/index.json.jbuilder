json.array!(@space_pictures) do |space_picture|
  json.extract! space_picture, :name, :source, :space_id
  json.url space_picture_url(space_picture, format: :json)
end
