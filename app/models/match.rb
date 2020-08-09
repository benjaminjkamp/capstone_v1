class Match < ApplicationRecord
  belongs_to :round
  has_many :teams


  def calculate_score(team, hole)
    # Declare match format, pulled from round
    # Pull scores from the team and match up to users
    # Based on format, determine the team score for the hole
    # return score for the hole
  end

  def calculate_winner(team1, team2)
    # for each hole, compare team score for each hole
    # compare totals and set match.winner accordingly
    
  end

  def team(user, team)
    user_team = UserTeam.new(
      user_id: user,
      team_id: team
    )
    return user_team
  end

  def add_scores(match, user, team)
    index = 1
    18.times do
      score = Score.new(
        user_id: user,
        team_id: team.id,
        year: match.round.tournament.year,
        hole: index
        
      )
      if score.save
      else
        break
      end
      index += 1
    end
  end
  
  def calc_net(match)
    player1_scores = match.teams[0].scores.select{score|score.user_id = match.teams[0][0].id}
    player2_scores = match.teams[0].scores.select{score|score.user_id = match.teams[0][1].id}
    player3_scores = match.teams[1].scores.select{score|score.user_id = match.teams[1][0].id}
    player4_scores = match.teams[1].scores.select{score|score.user_id = match.teams[1][1].id}

    team1_scores = match.teams[0].scores
    team2_scores = match.teams[1].scores
    i = 0
    h = 0
    index = 0
    net_scores = scores
    handicap = score.user.handicap_low_net
    course_handicaps = score.team.match.round.course.handicaps
    
    while i < handicap
      h = course_handicaps.index(i+1)
      if handicap >= course_handicaps[h]
        net_scores[index][h][:score] -= 1 
      end
      if i > 16
        handicap -= 18
        i = -1        
      end
      i += 1
    end
    
  end
  
end
