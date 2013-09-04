json.array!(@homes) do |home|
  json.extract! home, :name, :user_id, :city, :state, :country
  json.url home_url(home, format: :json)
end
