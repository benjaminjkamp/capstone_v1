class Api::MatchesController < ApplicationController

  before_action :authenticate_user, only: [:create, :update, :destroy]

  def create
    @match = Match.new(
      round_id: params[:round_id],
      # name: params[:name_match]
      )
    if @match.save
      @team1 = Team.new(
        name: params[:name_team1],
        match_id: @match.id,
        total_score: 0
        )
      @team2 = Team.new(
        name: params[:name_team2],
        match_id: @match.id,
        total_score: 0
        )
      if @team1.save && @team2.save
        @user_team1 = UserTeam.new(
          user_id: params[:user_id_1],
          team_id: @team1.id
          )
        @user_team2 = UserTeam.new(
          user_id: params[:user_id_2],
          team_id: @team1.id
          )
        @user_team3 = UserTeam.new(
          user_id: params[:user_id_3],
          team_id: @team2.id
          )
        @user_team4 = UserTeam.new(
          user_id: params[:user_id_4],
          team_id: @team2.id
          )
        if @user_team1.save && @user_team2.save && @user_team3.save && @user_team4.save
          @match.name = "#{@team1.name} vs. #{@team2.name}"
          @match.save
          render 'show.json.jbuilder'
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

    # @match.name = "#{@team1.name} Vs. #{@team2.name}"

    @team1.name = params[:team1_name] || @team1.name
    @team1.score_hole_1 = params[:team1_score1] || @team1.score_hole_1 || 0
    @team1.score_hole_2 = params[:team1_score2] || @team1.score_hole_2 || 0
    @team1.score_hole_3 = params[:team1_score3] || @team1.score_hole_3 || 0
    @team1.score_hole_4 = params[:team1_score4] || @team1.score_hole_4 || 0
    @team1.score_hole_5 = params[:team1_score5] || @team1.score_hole_5 || 0
    @team1.score_hole_6 = params[:team1_score6] || @team1.score_hole_6 || 0
    @team1.score_hole_7 = params[:team1_score7] || @team1.score_hole_7 || 0
    @team1.score_hole_8 = params[:team1_score8] || @team1.score_hole_8 || 0
    @team1.score_hole_9 = params[:team1_score9] || @team1.score_hole_9 || 0
    @team1.score_hole_10 = params[:team1_score10] || @team1.score_hole_10 || 0
    @team1.score_hole_11 = params[:team1_score11] || @team1.score_hole_11 || 0
    @team1.score_hole_12 = params[:team1_score12] || @team1.score_hole_12 || 0
    @team1.score_hole_13 = params[:team1_score13] || @team1.score_hole_13 || 0
    @team1.score_hole_14 = params[:team1_score14] || @team1.score_hole_14 || 0
    @team1.score_hole_15 = params[:team1_score15] || @team1.score_hole_15 || 0
    @team1.score_hole_16 = params[:team1_score16] || @team1.score_hole_16 || 0
    @team1.score_hole_17 = params[:team1_score17] || @team1.score_hole_17 || 0
    @team1.score_hole_18 = params[:team1_score18] || @team1.score_hole_18 || 0

    @team2.name = params[:team2_name] || @team2.name
    @team2.score_hole_1 = params[:team2_score1] || @team2.score_hole_1 || 0
    @team2.score_hole_2 = params[:team2_score2] || @team2.score_hole_2 || 0
    @team2.score_hole_3 = params[:team2_score3] || @team2.score_hole_3 || 0
    @team2.score_hole_4 = params[:team2_score4] || @team2.score_hole_4 || 0
    @team2.score_hole_5 = params[:team2_score5] || @team2.score_hole_5 || 0
    @team2.score_hole_6 = params[:team2_score6] || @team2.score_hole_6 || 0
    @team2.score_hole_7 = params[:team2_score7] || @team2.score_hole_7 || 0
    @team2.score_hole_8 = params[:team2_score8] || @team2.score_hole_8 || 0
    @team2.score_hole_9 = params[:team2_score9] || @team2.score_hole_9 || 0
    @team2.score_hole_10 = params[:team2_score10] || @team2.score_hole_10 || 0
    @team2.score_hole_11 = params[:team2_score11] || @team2.score_hole_11 || 0
    @team2.score_hole_12 = params[:team2_score12] || @team2.score_hole_12 || 0
    @team2.score_hole_13 = params[:team2_score13] || @team2.score_hole_13 || 0
    @team2.score_hole_14 = params[:team2_score14] || @team2.score_hole_14 || 0
    @team2.score_hole_15 = params[:team2_score15] || @team2.score_hole_15 || 0
    @team2.score_hole_16 = params[:team2_score16] || @team2.score_hole_16 || 0
    @team2.score_hole_17 = params[:team2_score17] || @team2.score_hole_17 || 0
    @team2.score_hole_18 = params[:team2_score18] || @team2.score_hole_18 || 0

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
