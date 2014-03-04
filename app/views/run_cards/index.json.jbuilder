json.array!(@run_cards) do |run_card|
  json.extract! run_card, :pace, :distance, :type, :day, :time, :target_distance, :target_race
  json.url run_card_url(run_card, format: :json)
end
