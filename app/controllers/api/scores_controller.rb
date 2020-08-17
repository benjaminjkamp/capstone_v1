class Api::ScoresController < ApplicationController

  before_action :authenticate_user

  def update
    @score = Score.find(params[:id])
    if authenticate_self
      @score.score = params[:score] || @score.score
      @score.net_score = @score.score
      # @score.net_score = calc_net(@score) || @score.net_score
      if @score.save
        render 'show.json.jbuilder'
      else
        render json:{errors: @score.errors.full_messages}, status: :unprocessable_entity
      end
    end
  end



end
