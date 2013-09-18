json.array!(@shots) do |shot|
  json.extract! shot, :name
  json.url shot_url(shot, format: :json)
end