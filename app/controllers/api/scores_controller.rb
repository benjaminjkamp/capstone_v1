class Api::ScoresController < ApplicationController

  before_action :authenticate_user

  def update
    @score = Score.find(params[:id])
    @tournament = @score.team.match.round.tournament
    @user = User.find(current_user.id)
    print "user"
    print @user.first_name
    print @user.admin
    @admin_restricted = false

    if authenticate_self || authenticate_admin 
      if !@admin_restricted || authenticate_commissioner
        @score.score = params[:score] || @score.score
        @score.net_score = @score.score
        # @score.net_score = calc_net(@score) || @score.net_score
        if @score.save
          render 'show.json.jbuilder'
        else
          if @admin_restricted
          else
            render json:{errors: @score.errors.full_messages}, status: :unprocessable_entity
          end
        end
      end
    end
  end



end
