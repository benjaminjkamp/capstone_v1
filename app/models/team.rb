class Team < ApplicationRecord
  belongs_to :match
  has_many :user_teams
  has_many :users, through: :user_teams
  has_many :scores

  def calc_team_score(team, hole)
    score1 = Score.find_by(team_id: team.id, user_id: team.users[0].id, hole: hole).net_score
    score2 = Score.find_by(team_id: team.id, user_id: team.users[1].id, hole: hole).net_score
    if team.match.round.format == "2 Man Best Ball"
      if score1 < score2
        return score1
      else
        return score2
      end
    # elsif team.match.round.format == "2 Man Total Score"
    #   2man_total_score(team)
    # elsif team.match.round.format == "Stableford"
    #   stableford(team)
    # elsif team.match.round.format == "Alternate Shot"
    #   alt_shot(team)
    # elsif team.match.round.format == "1v1"
    #   1v1(team)
    # elsif team.match.round.format == "Scramble"
    #   scramble(team)
    else

    end
  end

end
