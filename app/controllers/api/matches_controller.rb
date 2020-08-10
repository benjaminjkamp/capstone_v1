class Api::MatchesController < ApplicationController

  before_action :authenticate_user, only: [:create, :update, :destroy]

  def create
    @user1 = params[:user_id_1]
    @user2 = params[:user_id_2]
    @user3 = params[:user_id_3]
    @user4 = params[:user_id_4]
    
    @match = Match.new(
      round_id: params[:round_id]
      # name: params[:name_match]
      )
    if @match.save
      @team1 = Team.new(
        name: "Team Red",
        match_id: @match.id,
        total_score: 0
        )
      @team2 = Team.new(
        name: "Team Blue",
        match_id: @match.id,
        total_score: 0
        )
      if @team1.save && @team2.save
        
        @user_team1 = @match.team(@user1, @team1.id)
        @user_team2 = @match.team(@user2, @team1.id)
        @user_team3 = @match.team(@user3, @team2.id)
        @user_team4 = @match.team(@user4, @team2.id)
        
        
        if @user_team1.save && @user_team2.save && @user_team3.save && @user_team4.save
          @match.name = "#{@team1.name} vs. #{@team2.name}"
          @match.save

          @match.add_scores(@match, @user1, @team1)
          @match.add_scores(@match, @user2, @team1)
          @match.add_scores(@match, @user3, @team2)
          @match.add_scores(@match, @user4, @team2)

          if @team2.scores[35]
            render 'show.json.jbuilder'
          else
            render json:{errors: @match.errors.full_messages}, status: :unprocessable_entity
          end
          
        else
          @match.destroy
          @team1.destroy
          @team2.destroy
          @user_team1.destroy
          @user_team2.destroy
          @user_team3.destroy
          
          render json:{errors: @match.errors.full_messages}, status: :unprocessable_entity
        end
      else
        render json:{errors: @match.errors.full_messages}, status: :unprocessable_entity
      end
        
    else
      render json:{errors: @match.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @match = Match.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @match = Match.find(params[:id])
    @team1 = @match.teams[0]
    @team2 = @match.teams[1]
    @team1_scores = @team1.scores
    @team2_scores = @team2.scores

    @match.calc_net(@match)

    # @match.name = "#{@team1.name} Vs. #{@team2.name}"

    
    # team1_scores = calculate_hole_winner(@team1, @team2)
    # team2_scores = calculate_hole_winner(@team2, @team1)
    # @team1.score_hole_1 = calculate_score(@team1, 1)


    @team1.name = params[:team1_name] || @team1.name
    @team1.score_hole_1 = @team1.calc_team_score(@team1, 1) || @team1.score_hole_1 || 0
    @team1.score_hole_2 = @team1.calc_team_score(@team1, 2) || @team1.score_hole_2 || 0
    @team1.score_hole_3 = @team1.calc_team_score(@team1, 3) || @team1.score_hole_3 || 0
    @team1.score_hole_4 = @team1.calc_team_score(@team1, 4) || @team1.score_hole_4 || 0
    @team1.score_hole_5 = @team1.calc_team_score(@team1, 5) || @team1.score_hole_5 || 0
    @team1.score_hole_6 = @team1.calc_team_score(@team1, 6) || @team1.score_hole_6 || 0
    @team1.score_hole_7 = @team1.calc_team_score(@team1, 7) || @team1.score_hole_7 || 0
    @team1.score_hole_8 = @team1.calc_team_score(@team1, 8) || @team1.score_hole_8 || 0
    @team1.score_hole_9 = @team1.calc_team_score(@team1, 9) || @team1.score_hole_9 || 0
    @team1.score_hole_10 = @team1.calc_team_score(@team1, 10) || @team1.score_hole_10 || 0
    @team1.score_hole_11 = @team1.calc_team_score(@team1, 11) || @team1.score_hole_11 || 0
    @team1.score_hole_12 = @team1.calc_team_score(@team1, 12) || @team1.score_hole_12 || 0
    @team1.score_hole_13 = @team1.calc_team_score(@team1, 13) || @team1.score_hole_13 || 0
    @team1.score_hole_14 = @team1.calc_team_score(@team1, 14) || @team1.score_hole_14 || 0
    @team1.score_hole_15 = @team1.calc_team_score(@team1, 15) || @team1.score_hole_15 || 0
    @team1.score_hole_16 = @team1.calc_team_score(@team1, 16) || @team1.score_hole_16 || 0
    @team1.score_hole_17 = @team1.calc_team_score(@team1, 17) || @team1.score_hole_17 || 0
    @team1.score_hole_18 = @team1.calc_team_score(@team1, 18) || @team1.score_hole_18 || 0

    @team2.name = params[:team2_name] || @team2.name
    @team2.score_hole_1 = @team2.calc_team_score(@team2, 1) || @team2.score_hole_1 || 0
    @team2.score_hole_2 = @team2.calc_team_score(@team2, 2) || @team2.score_hole_2 || 0
    @team2.score_hole_3 = @team2.calc_team_score(@team2, 3) || @team2.score_hole_3 || 0
    @team2.score_hole_4 = @team2.calc_team_score(@team2, 4) || @team2.score_hole_4 || 0
    @team2.score_hole_5 = @team2.calc_team_score(@team2, 5) || @team2.score_hole_5 || 0
    @team2.score_hole_6 = @team2.calc_team_score(@team2, 6) || @team2.score_hole_6 || 0
    @team2.score_hole_7 = @team2.calc_team_score(@team2, 7) || @team2.score_hole_7 || 0
    @team2.score_hole_8 = @team2.calc_team_score(@team2, 8) || @team2.score_hole_8 || 0
    @team2.score_hole_9 = @team2.calc_team_score(@team2, 9) || @team2.score_hole_9 || 0
    @team2.score_hole_10 = @team2.calc_team_score(@team2, 10) || @team2.score_hole_10 || 0
    @team2.score_hole_11 = @team2.calc_team_score(@team2, 11) || @team2.score_hole_11 || 0
    @team2.score_hole_12 = @team2.calc_team_score(@team2, 12) || @team2.score_hole_12 || 0
    @team2.score_hole_13 = @team2.calc_team_score(@team2, 13) || @team2.score_hole_13 || 0
    @team2.score_hole_14 = @team2.calc_team_score(@team2, 14) || @team2.score_hole_14 || 0
    @team2.score_hole_15 = @team2.calc_team_score(@team2, 15) || @team2.score_hole_15 || 0
    @team2.score_hole_16 = @team2.calc_team_score(@team2, 16) || @team2.score_hole_16 || 0
    @team2.score_hole_17 = @team2.calc_team_score(@team2, 17) || @team2.score_hole_17 || 0
    @team2.score_hole_18 = @team2.calc_team_score(@team2, 18) || @team2.score_hole_18 || 0

    @team1.total_score = (@team1.score_hole_1 + 
       @team1.score_hole_2 + 
       @team1.score_hole_3 + 
       @team1.score_hole_4 + 
       @team1.score_hole_5 + 
       @team1.score_hole_6 + 
       @team1.score_hole_7 + 
       @team1.score_hole_8 + 
       @team1.score_hole_9 + 
       @team1.score_hole_10 + 
       @team1.score_hole_11 + 
       @team1.score_hole_12 + 
       @team1.score_hole_13 + 
       @team1.score_hole_14 + 
       @team1.score_hole_15 + 
       @team1.score_hole_16 + 
       @team1.score_hole_17 + 
       @team1.score_hole_18)

    @team2.total_score = (@team2.score_hole_1 + 
       @team2.score_hole_2 + 
       @team2.score_hole_3 + 
       @team2.score_hole_4 + 
       @team2.score_hole_5 + 
       @team2.score_hole_6 + 
       @team2.score_hole_7 + 
       @team2.score_hole_8 + 
       @team2.score_hole_9 + 
       @team2.score_hole_10 + 
       @team2.score_hole_11 + 
       @team2.score_hole_12 + 
       @team2.score_hole_13 + 
       @team2.score_hole_14 + 
       @team2.score_hole_15 + 
       @team2.score_hole_16 + 
       @team2.score_hole_17 + 
       @team2.score_hole_18)
       
    if @team1.total_score > @team2.total_score
      @match.winner = @team1.name
    else
      @match.winner = @team2.name
    end

    if @team1.save && @team2.save
      @match.name = "#{@team1.name} vs. #{@team2.name}"
      @match.save
      render 'show.json.jbuilder'
    else
      render json:{errors: "#{@team1.errors.full_messages}, #{@team2.errors.full_messages}"}, status: :unprocessable_entity
    end

    
    
  end

  def destroy
    @match = Match.find(params[:id])
    @team1 = @match.teams[0]
    @team2 = @match.teams[1]
    @team1_userteam1 = @match.teams[0].user_teams[0]
    @team1_userteam2 = @match.teams[0].user_teams[1]
    @team2_userteam1 = @match.teams[1].user_teams[0]
    @team2_userteam2 = @match.teams[1].user_teams[1]


    @match.destroy
    @team1.destroy
    @team2.destroy
    @team1_userteam1.destroy
    @team1_userteam2.destroy
    @team2_userteam1.destroy
    @team2_userteam2.destroy

    render json:{message: "Match has been deleted."}
  end


end
