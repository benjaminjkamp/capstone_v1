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
      if @match.round.format != "Scramble"
        @team2 = Team.new(
          name: "Team Blue",
          match_id: @match.id,
          total_score: 0
          )
        @team2.save
      end
      if @team1.save
        
        @user_team1 = @match.team(@user1, @team1.id)
        if @match.round.format == "Scramble"
          @user_team2 = @match.team(@user2, @team1.id)
          @user_team3 = @match.team(@user3, @team1.id)
          @user_team4 = @match.team(@user4, @team1.id)

          @user_team2.save
          @user_team3.save
        else
          if @match.round.format != "Match Play" && @match.round.format != "Stableford"
            @user_team2 = @match.team(@user2, @team1.id)
            @user_team3 = @match.team(@user3, @team2.id)

            @user_team2.save
            @user_team3.save
          end

          @user_team4 = @match.team(@user4, @team2.id)
        end
        
              
        
        if @user_team1.save && @user_team4.save
          if @match.round.format == "Scramble"
            @match.name = "Scramble #{@match.round.matches.index(@match) + 1}"
          else
            @match.name = "#{@team1.name} vs. #{@team2.name}"
          end
          @match.save

          @player1_scores = @match.add_scores(@match, @user1, @team1)
          if @match.round.format != "Scramble"
            @player2_scores = @match.add_scores(@match, @user2, @team1) if @user2 != ""
            @player3_scores = @match.add_scores(@match, @user3, @team2) if @user3 != ""
            @player4_scores = @match.add_scores(@match, @user4, @team2) 
          end

          if @match.round.format == "Scramble" || @team2.scores
            render 'show.json.jbuilder'
          else
            render json:{player1_errors: @player1_scores, player2_errors: @player2_scores, player3_errors: @player3_scores, player4_errors: @player4_scores}, status: :unprocessable_entity
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

      

    if @match.round.format == "Alternate Shot"
      @team2_scores = @team2.scores
      @match.calc_team_net(@match)
    elsif @match.round.format == "Scramble"
    else
      @team2_scores = @team2.scores
      @match.calc_net(@match)
    end
    # @match.name = "#{@team1.name} Vs. #{@team2.name}"

    
    # team1_scores = calculate_hole_winner(@team1, @team2)
    # team2_scores = calculate_hole_winner(@team2, @team1)
    # @team1.score_hole_1 = calculate_score(@team1, 1)


    @team1.name = params[:team1_name] || @team1.name
    @team1.score_hole_1 = @team1.calc_team_score(@team1, 1) || @team1.scores.order(:id)[0].score || @team1.score_hole_1 || 0
    @team1.score_hole_2 = @team1.calc_team_score(@team1, 2) || @team1.scores.order(:id)[1].score || @team1.score_hole_2 || 0
    @team1.score_hole_3 = @team1.calc_team_score(@team1, 3) || @team1.scores.order(:id)[2].score || @team1.score_hole_3 || 0
    @team1.score_hole_4 = @team1.calc_team_score(@team1, 4) || @team1.scores.order(:id)[3].score || @team1.score_hole_4 || 0
    @team1.score_hole_5 = @team1.calc_team_score(@team1, 5) || @team1.scores.order(:id)[4].score || @team1.score_hole_5 || 0
    @team1.score_hole_6 = @team1.calc_team_score(@team1, 6) || @team1.scores.order(:id)[5].score || @team1.score_hole_6 || 0
    @team1.score_hole_7 = @team1.calc_team_score(@team1, 7) || @team1.scores.order(:id)[6].score || @team1.score_hole_7 || 0
    @team1.score_hole_8 = @team1.calc_team_score(@team1, 8) || @team1.scores.order(:id)[7].score || @team1.score_hole_8 || 0
    @team1.score_hole_9 = @team1.calc_team_score(@team1, 9) || @team1.scores.order(:id)[8].score || @team1.score_hole_9 || 0
    @team1.score_hole_10 = @team1.calc_team_score(@team1, 10) || @team1.scores.order(:id)[9].score || @team1.score_hole_10 || 0
    @team1.score_hole_11 = @team1.calc_team_score(@team1, 11) || @team1.scores.order(:id)[10].score || @team1.score_hole_11 || 0
    @team1.score_hole_12 = @team1.calc_team_score(@team1, 12) || @team1.scores.order(:id)[11].score || @team1.score_hole_12 || 0
    @team1.score_hole_13 = @team1.calc_team_score(@team1, 13) || @team1.scores.order(:id)[12].score || @team1.score_hole_13 || 0
    @team1.score_hole_14 = @team1.calc_team_score(@team1, 14) || @team1.scores.order(:id)[13].score || @team1.score_hole_14 || 0
    @team1.score_hole_15 = @team1.calc_team_score(@team1, 15) || @team1.scores.order(:id)[14].score || @team1.score_hole_15 || 0
    @team1.score_hole_16 = @team1.calc_team_score(@team1, 16) || @team1.scores.order(:id)[15].score || @team1.score_hole_16 || 0
    @team1.score_hole_17 = @team1.calc_team_score(@team1, 17) || @team1.scores.order(:id)[16].score || @team1.score_hole_17 || 0
    @team1.score_hole_18 = @team1.calc_team_score(@team1, 18) || @team1.scores.order(:id)[17].score || @team1.score_hole_18 || 0

    if @match.round.format != "Scramble"
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
    end

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

    if @match.round.format != "Scramble"
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
    end
    
    if @match.round.format != "Scramble"  
      if @team1.total_score > @team2.total_score
        @match.winner = @team1.name
      else
        @match.winner = @team2.name
      end
      @team2.save
    end

    if @team1.save
      if @match.round.format != "Scramble"
        @match.name = "#{@team1.name} vs. #{@team2.name}"
        @match.save
      end
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
