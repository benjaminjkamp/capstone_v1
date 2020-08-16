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
    all_net_scores = []
    handicaps = []
    player1_net_scores = Score.where(team_id: match.teams[0].id, user_id: match.teams[0].users[0].id).order(:team_id, :id)
    player3_net_scores = Score.where(team_id: match.teams[1].id, user_id: match.teams[1].users[0].id).order(:team_id, :id) 

    if match.teams[0].users[1]
      player2_net_scores = Score.where(team_id: match.teams[0].id, user_id: match.teams[0].users[1].id).order(:id) 
      player4_net_scores = Score.where(team_id: match.teams[1].id, user_id: match.teams[1].users[1].id).order(:id)

      player2_net_scores.each do |score|
        score.net_score = score.score
      end
      player4_net_scores.each do |score|
        score.net_score = score.score
      end
      handicap2 = match.teams[0].users[1].handicap_low_net
      handicap4 = match.teams[1].users[1].handicap_low_net

      handicaps << handicap2
      handicaps << handicap4

      all_net_scores << player2_net_scores
      all_net_scores << player4_net_scores
    end

    player1_net_scores.each do |score|
      score.net_score = score.score
    end
    player3_net_scores.each do |score|
      score.net_score = score.score
    end
    

    handicap1 = match.teams[0].users[0].handicap_low_net
    handicap3 = match.teams[1].users[0].handicap_low_net
    
    
    handicaps << handicap1
    
    handicaps << handicap3
    

    course_handicaps = []
    
    all_net_scores << player1_net_scores
    
    all_net_scores << player3_net_scores
    

    match.round.course.handicaps.order(:id).each do |handicap|
      course_handicaps << handicap.value
    end

    index = 0
    all_net_scores.each do |player|
      
      handicap = handicaps[index]
      h = 0
      i = 0
      # player.order(:id)
      
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


  def calc_team_net(match)
    all_net_scores = []
    handicaps = []
    # team1_net_scores = Score.where(team_id: match.teams.order(:id)[0].id, user_id: match.teams.order(:id)[0].users[0].id)
    # team2_net_scores = Score.where(team_id: match.teams.order(:id)[1].id, user_id: match.teams.order(:id)[1].users[1].id)
    team1_scores = Score.where(team_id: match.teams.order(:id)[0].id).order(:id)
    team2_scores = Score.where(team_id: match.teams.order(:id)[1].id).order(:id)
    team1_net_scores = []
    team2_net_scores = []

    team1_scores.each do |score|
      if score.score && score.score > 0
        team1_net_scores << score
        score.net_score = score.score
      end
    end
    team2_scores.each do |score|
      if score.score && score.score > 0
        team2_net_scores << score
        score.net_score = score.score
      end
    end
    # team2_net_scores.each do |score|
    #   score.net_score = score.score
    # end
    
    handicap1 = (match.teams.order(:id)[0].users[0].handicap_low_net + match.teams.order(:id)[0].users[1].handicap_low_net) / 2
    handicap2 = (match.teams.order(:id)[1].users[0].handicap_low_net + match.teams.order(:id)[1].users[1].handicap_low_net) / 2

    
    handicaps << handicap1
    handicaps << handicap2

    print "handicaps: "
    print handicaps
    
    all_net_scores << team1_net_scores
    all_net_scores << team2_net_scores
    print "net scores 1"
    print all_net_scores[0]
    print "net scores 2"
    print all_net_scores[1]
    course_handicaps = []
    

    match.round.course.handicaps.order(:id).each do |handicap|
      course_handicaps << handicap.value
    end

    index = 0
    print course_handicaps
    all_net_scores.each do |team|
      
      handicap = handicaps[index]
      print "handicap: " + handicap.to_s
      h = 0
      i = 0
      # player.order(:id)
      print team
      while i < handicap
        h = course_handicaps.index(i+1)
        if handicap >= course_handicaps[h]
          team[h].net_score -= 1
          team[h].save
          
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

 

  
  
end
