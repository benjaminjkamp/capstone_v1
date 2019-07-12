json.id tournament.id
json.name tournament.name

json.rounds do
  json.array! tournament.rounds do |round|
    json.partial! round, partial: "api/rounds/round", as: :round
  end

end