class Api::ScoresController < ApplicationController

  def update
    @score = Score.find(params[:id])
    @score.score = params[:score] || @score.score

    render 'show.json.jbuilder'
  end



end
