json.array!(@strokes) do |stroke|
  json.extract! stroke, :player_id, :shot, :handedness, :grip, :spin
  json.url stroke_url(stroke, format: :json)
end