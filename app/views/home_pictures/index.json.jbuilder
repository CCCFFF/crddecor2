json.array!(@home_pictures) do |home_picture|
  json.extract! home_picture, :name, :home_id, :source
  json.url home_picture_url(home_picture, format: :json)
end
