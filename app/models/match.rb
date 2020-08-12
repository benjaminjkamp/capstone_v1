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
        return score.errors.full_messages
      end
      index += 1
    end
  end
  
  def calc_net(match)

    player1_net_scores = Score.where(team_id: match.teams[0].id, user_id: match.teams[0].users[0].id).order(:id)
    player2_net_scores = Score.where(team_id: match.teams[0].id, user_id: match.teams[0].users[1].id).order(:id)
    player3_net_scores = Score.where(team_id: match.teams[1].id, user_id: match.teams[1].users[0].id).order(:id)
    player4_net_scores = Score.where(team_id: match.teams[1].id, user_id: match.teams[1].users[1].id).order(:id)

    player1_net_scores.each do |score|
      score.net_score = score.score
    end
    player2_net_scores.each do |score|
      score.net_score = score.score
    end
    player3_net_scores.each do |score|
      score.net_score = score.score
    end
    player4_net_scores.each do |score|
      score.net_score = score.score
    end

    handicap1 = match.teams[0].users[0].handicap_low_net
    handicap2 = match.teams[0].users[1].handicap_low_net
    handicap3 = match.teams[1].users[0].handicap_low_net
    handicap4 = match.teams[1].users[1].handicap_low_net
    handicaps = []
    handicaps << handicap1
    handicaps << handicap2
    handicaps << handicap3
    handicaps << handicap4

    course_handicaps = []
    all_net_scores = []
    all_net_scores << player1_net_scores
    all_net_scores << player2_net_scores
    all_net_scores << player3_net_scores
    all_net_scores << player4_net_scores

    match.round.course.handicaps.order(:id).each do |handicap|
      course_handicaps << handicap.value
    end

    index = 0
    all_net_scores.each do |player|
      
      handicap = handicaps[index]
      h = 0
      i = 0
      player.order(:id)
      
      while i < handicap
        h = course_handicaps.index(i+1)
        if handicap >= course_handicaps[h]
          player[h].net_score -= 1
          player[h].save
        end
        if i > 16
          handicap -= 18
          i = -1        
        end
        i += 1
      end
      index += 1
      
    end 
    
  end

  # def 2man_best_ball(team, hole)
  #   score = 0.0

  #   score1 = Score.find_by(team_id: team.id, user_id: team.users[0].id, hole: hole)
  #   score2 = Score.find_by(team_id: team.id, user_id: team.users[1].id, hole: hole)

  #   if score1.net_score < score2.net_score
  #     score = score1.net_score
  #   else
  #     score = score2.net_score
  #   end

    
  # end

  # def 2man_total_score(team)
    
  # end

  # def stableford(team)
    
  # end

  # def alt_shot(team)
    
  # end

  # def 1v1(team)
    
  # end

  # def scramble(team)
    
  # end

  
  
end
