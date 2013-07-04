json.array!(@searches) do |search|
  json.extract! search, :user_id, :item_id, :shop_id, :check_in_at, :check_out_at, :keyword
  json.url search_url(search, format: :json)
end
