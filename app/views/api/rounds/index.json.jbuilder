json.array! @rounds.each do |round|
  json.id round.id
  json.name round.name
end