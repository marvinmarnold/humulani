json.array!(@users) do |user|
  json.extract! user, :belongs_to
  json.url user_url(user, format: :json)
end
