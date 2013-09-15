json.array!(@searches) do |search|
  json.extract! search, :name, :shot_id, :hand_id, :grip_id, :spin_id
  json.url search_url(search, format: :json)
end