json.array!(@grips) do |grip|
  json.extract! grip, :name
  json.url grip_url(grip, format: :json)
end