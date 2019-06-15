json.partial! "round.json.jbuilder", round: @round

json.matches do
  json.array! @round.matches do |match|
    json.partial! match, partial: "api/matches/match", as: :match
  end
  # json.partial! @round.matches, partial: "api/matches/match", as: :match





  # json.array! @round.matches.each do |match|
  #   json.match match.name
  #   json.score "#{match.teams[0].total_score} - #{match.teams[1].total_score}"
  #   json.team1_score match.teams[0].total_score
  #   json.team2_score match.teams[1].total_score
    
  #   json.winner match.winner
  #   json.teams match.teams
  # end
end