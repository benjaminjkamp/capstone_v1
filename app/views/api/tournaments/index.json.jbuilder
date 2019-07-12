json.array! @tournaments.each do |tournament|
  json.partial! "tournament.json.jbuilder", tournament: tournament
end