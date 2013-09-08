json.array!(@players) do |player|
  json.extract! player, :player_id, :name
  json.url player_url(player, format: :json)
end