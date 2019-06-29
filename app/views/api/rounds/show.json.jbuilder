json.partial! "round.json.jbuilder", round: @round

json.matches do
  json.array! @round.matches do |match|
    json.partial! match, partial: "api/matches/match", as: :match
  end

end