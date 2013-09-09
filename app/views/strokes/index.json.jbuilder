json.array!(@strokes) do |stroke|
  json.extract! stroke, :shot, :handedness, :grip, :spin, :link
  json.url stroke_url(stroke, format: :json)
end