json.array!(@spins) do |spin|
  json.extract! spin, :name
  json.url spin_url(spin, format: :json)
end