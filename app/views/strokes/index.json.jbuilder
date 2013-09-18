json.array!(@strokes) do |stroke|
  json.extract! stroke, :shot_id, :hand_id, :grip_id, :spin_id, :link
  json.url stroke_url(stroke, format: :json)
end