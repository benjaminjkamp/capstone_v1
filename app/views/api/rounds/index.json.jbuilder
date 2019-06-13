json.array! @rounds.each do |round|
  json.round round.name
end