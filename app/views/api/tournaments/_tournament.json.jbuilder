json.id tournament.id
json.name tournament.name

json.red_team_2mantotal tournament.red_team_2mantotal
json.red_team_2manbb tournament.red_team_2manbb
json.red_team_altshot tournament.red_team_altshot
json.red_team_stableford tournament.red_team_stableford
json.red_team_head2head tournament.red_team_head2head

json.blue_team_2mantotal tournament.blue_team_2mantotal
json.blue_team_2manbb tournament.blue_team_2manbb
json.blue_team_altshot tournament.blue_team_altshot
json.blue_team_stableford tournament.blue_team_stableford
json.blue_team_head2head tournament.blue_team_head2head




json.rounds do
  json.array! tournament.rounds do |round|
    json.partial! round, partial: "api/rounds/round", as: :round
  end

end