
json.array! @round.matches.each do |match|
  json.round match.round.name
  json.course match.round.course
  json.name match.name
  json.score "#{match.teams[0].total_score} - #{match.teams[1].total_score}"
  json.team1_score match.teams[0].total_score
  json.team2_score match.teams[1].total_score
  
  json.winner match.winner
  json.teams match.teams
end