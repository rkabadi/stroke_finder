json.array!(@hands) do |hand|
  json.extract! hand, :name
  json.url hand_url(hand, format: :json)
end