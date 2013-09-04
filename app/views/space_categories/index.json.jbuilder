json.array!(@space_categories) do |space_category|
  json.extract! space_category, :name
  json.url space_category_url(space_category, format: :json)
end
