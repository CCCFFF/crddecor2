json.array!(@spaces) do |space|
  json.extract! space, :name, :category, :size, :home_id
  json.url space_url(space, format: :json)
end
