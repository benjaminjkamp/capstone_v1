class Team < ApplicationRecord
  belongs_to :match
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :scores

  def two_man_best_ball
    score = 0.0

    score1 = Score.find_by(team_id: @team.id, user_id: @team.users[0].id, hole: @hole)
    score2 = Score.find_by(team_id: @team.id, user_id: @team.users[1].id, hole: @hole)

    if score1.net_score && score2.net_score
      if score1.net_score < score2.net_score
        score = score1.net_score
      else
        score = score2.net_score
      end
    end
    print "best ball"
    print score
    return score
  end

  def two_man_total_score
    score = 0.0
    score1 = Score.find_by(team_id: @team.id, user_id: @team.users[0].id, hole: @hole)
    score2 = Score.find_by(team_id: @team.id, user_id: @team.users[1].id, hole: @hole)

    if score1.score && score2.score
      score = score1.net_score + score2.net_score
    elsif score1.score
      score = score1.net_score
    elsif score2.score
      score = score2.net_score
    end

    return score    
  end

  def stableford
    score = 0.0
    score1 = Score.find_by(team_id: @team.id, user_id: @team.users[0].id, hole: @hole)

    if score1.net_score <= @team.match.round.course.pars[@hole-1].value - 2
      score = 5
    elsif score1.net_score == @team.match.round.course.pars[@hole-1].value - 1
      score = 4
    elsif score1.net_score == @team.match.round.course.pars[@hole-1].value
      score = 3
    elsif score1.net_score == @team.match.round.course.pars[@hole-1].value + 1
      score = 2
    elsif score1.net_score == @team.match.round.course.pars[@hole-1].value + 2
      score = 1
    else
      score = 0
    end
    print "net score: " + score1.net_score.to_s
    print "par: " + @team.match.round.course.pars[@hole-1].value.to_s
    print "return score: " + score.to_s
    return score
  end

  def alt_shot
    score = 0.0

    score1 = Score.find_by(team_id: @team.id, user_id: @team.users[0].id, hole: @hole)
    score2 = Score.find_by(team_id: @team.id, user_id: @team.users[1].id, hole: @hole)
    print "score1: " + score1.net_score.to_s
    print "score2: " + score2.net_score.to_s
    score = score1.score if score1.score
    score = score2.score if score2.score

    return score
  end

  def match_play
    score = Score.find_by(team_id: @team.id, user_id: @team.users[0].id, hole: @hole)
    return score.net_score
  end

  # def scramble
    
  # end

  def calc_team_score(team, hole)
    @team = team
    @hole = hole
    # @score1 = Score.find_by(team_id: team.id, user_id: team.users[0].id, hole: hole).net_score
    # @score2 = Score.find_by(team_id: team.id, user_id: team.users[1].id, hole: hole).net_score

    if team.match.round.format == "2 Man Best Ball"
      score = two_man_best_ball
    elsif team.match.round.format == "2 Man Total Score"
      score = two_man_total_score
    elsif team.match.round.format == "Stableford"
      score = stableford
    elsif team.match.round.format == "Alternate Shot"
      score = alt_shot
    elsif team.match.round.format == "Match Play"
      score = match_play
    # elsif team.match.round.format == "Scramble"
    #   scramble(team)
    else
      return Score.find_by(team_id: team.id, hole: hole).score
    end
    return score
  end

end
