json.partial! "match.json.jbuilder", match: @match

json.round do
  json.partial! @match.round, partial: "api/rounds/round", as: :round
end
