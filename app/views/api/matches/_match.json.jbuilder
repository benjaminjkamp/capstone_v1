json.id match.id
json.name match.name
json.team_1_score match.teams[0].total_score
json.team_2_score match.teams[1].total_score
json.match_leader match.winner

json.teams do
  json.team_1 do
    json.id match.teams[0].id
    json.name match.teams[0].name

    json.scores do
      json.score_1 match.teams[0].score_hole_1
      json.score_2 match.teams[0].score_hole_2
      json.score_3 match.teams[0].score_hole_3
      json.score_4 match.teams[0].score_hole_4
      json.score_5 match.teams[0].score_hole_5
      json.score_6 match.teams[0].score_hole_6
      json.score_7 match.teams[0].score_hole_7
      json.score_8 match.teams[0].score_hole_8
      json.score_9 match.teams[0].score_hole_9
      json.score_10 match.teams[0].score_hole_10
      json.score_11 match.teams[0].score_hole_11
      json.score_12 match.teams[0].score_hole_12
      json.score_13 match.teams[0].score_hole_13
      json.score_14 match.teams[0].score_hole_14
      json.score_15 match.teams[0].score_hole_15
      json.score_16 match.teams[0].score_hole_16
      json.score_17 match.teams[0].score_hole_17
      json.score_18 match.teams[0].score_hole_18
    end

    json.players do
      
      json.player_1 do
        json.partial! match.teams[0].users[0], partial: "api/users/user", as: :user
      end
      json.player_2 do
        json.partial! match.teams[0].users[1], partial: "api/users/user", as: :user
      end
    end
  end

  json.team_2 do
    json.id match.teams[1].id
    json.name match.teams[1].name
    json.scores do
      json.score_1 match.teams[1].score_hole_1
      json.score_2 match.teams[1].score_hole_2
      json.score_3 match.teams[1].score_hole_3
      json.score_4 match.teams[1].score_hole_4
      json.score_5 match.teams[1].score_hole_5
      json.score_6 match.teams[1].score_hole_6
      json.score_7 match.teams[1].score_hole_7
      json.score_8 match.teams[1].score_hole_8
      json.score_9 match.teams[1].score_hole_9
      json.score_10 match.teams[1].score_hole_10
      json.score_11 match.teams[1].score_hole_11
      json.score_12 match.teams[1].score_hole_12
      json.score_13 match.teams[1].score_hole_13
      json.score_14 match.teams[1].score_hole_14
      json.score_15 match.teams[1].score_hole_15
      json.score_16 match.teams[1].score_hole_16
      json.score_17 match.teams[1].score_hole_17
      json.score_18 match.teams[1].score_hole_18
    end

    json.players do
      
      json.player_1 do
        json.partial! match.teams[1].users[0], partial: "api/users/user", as: :user
      end
      json.player_2 do
        json.partial! match.teams[1].users[1], partial: "api/users/user", as: :user
      end
    end
  end

end