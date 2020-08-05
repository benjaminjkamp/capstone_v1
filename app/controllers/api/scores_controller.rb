class Api::ScoresController < ApplicationController

  def update
    @score = Score.find(params[:id])
    @score.score = params[:score] || @score.score
    if @score.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @score.errors.full_messages}, status: :unprocessable_entity
    end
  end



end
