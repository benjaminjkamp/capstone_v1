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

  def scores(match, user, team)
    index = 1
    18.times do |hole|
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

end
