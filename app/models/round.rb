class Round < ApplicationRecord
  belongs_to :course
  belongs_to :tournament
  has_many :matches


  def set_wins (red_wins, blue_wins)
    return {red_wins: red_wins, blue_wins: blue_wins}
  end

  def update_scores
    red_wins = 0
    blue_wins = 0
    @round.matches.each do |match|
      if match.winner == "Team Red"
        red_wins += 1
      elsif match.winner == "Team Blue"
        blue_wins += 1
      else
        red_wins +=1
        blue_wins += 1
      end
    end
    return set_wins(red_wins, blue_wins)
  end

  def update_2manbb
    @tournament.red_team_2manbb = @wins[:red_wins]
    @tournament.blue_team_2manbb = @wins[:blue_wins]
  end

  def update_2mantotal
    @tournament.red_team_2mantotal = @wins[:red_wins]
    @tournament.blue_team_2mantotal = @wins[:blue_wins]
  end

  def update_altshot
    @tournament.red_team_altshot = @wins[:red_wins]
    @tournament.blue_team_altshot = @wins[:blue_wins]
  end

  def update_stableford
    @tournament.red_team_stableford = @wins[:red_wins]
    @tournament.blue_team_stableford = @wins[:blue_wins]
  end

  def update_match_play
    @tournament.red_team_head2head = @wins[:red_wins]
    @tournament.blue_team_head2head = @wins[:blue_wins]
  end

  def update_tournament
    if @round.format == "2 Man Best Ball"
      update_2manbb
    elsif @round.format == "2 Man Total Score"
      update_2mantotal
    elsif @round.format == "Stableford"
      update_stableford
    elsif @round.format == "Match Play"
      update_match_play
    elsif @round.format == "Alternate Shot"
      update_altshot      
    end
  end

  def update_standings(round, tournament)
    @round = round
    @tournament = tournament
    
    @wins = update_scores

    update_tournament
      
    @tournament.save
    
    # update_2manbb if @round.format == "2 Man Best Ball"
    # update_2mantotal if @round.format == "2 Man Total Score"
    # update_altshot if @round.format == "Alternate Shot"
    # update_stableford if @round.format == "Stableford"
    # update_match_play if @round.format =="Match Play"
  end


end
