json.array!(@searches) do |search|
  json.extract! search, :name, :shot, :handedness, :grip, :spin
  json.url search_url(search, format: :json)
end