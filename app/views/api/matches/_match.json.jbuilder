json.id match.id
json.name match.name
json.mode match.mode
json.team_1_score match.teams[0].total_score
json.team_2_score match.teams[1].total_score
json.match_leader match.winner

json.teams do
  json.array! match.teams.order(:id).each do |team|
    json.id team.id
    json.name team.name
    json.scores do
      json.score_1 team.score_hole_1
      json.score_2 team.score_hole_2
      json.score_3 team.score_hole_3
      json.score_4 team.score_hole_4
      json.score_5 team.score_hole_5
      json.score_6 team.score_hole_6
      json.score_7 team.score_hole_7
      json.score_8 team.score_hole_8
      json.score_9 team.score_hole_9
      json.score_10 team.score_hole_10
      json.score_11 team.score_hole_11
      json.score_12 team.score_hole_12
      json.score_13 team.score_hole_13
      json.score_14 team.score_hole_14
      json.score_15 team.score_hole_15
      json.score_16 team.score_hole_16
      json.score_17 team.score_hole_17
      json.score_18 team.score_hole_18
    end
    json.players do
      json.array! team.users.order(:id).each do |user|

        json.partial! user, partial: "/api/users/user", as: :user
        
      end
    end
  end  

end