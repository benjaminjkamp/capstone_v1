class Api::RoundsController < ApplicationController

  def index
    @rounds = Round.all
    render 'index.json.jbuilder'    
  end

  def create
    @round = Round.new(
      name: "#{params[:year]} - #{params[:format]}",
      course_id: params[:course_id]
      )

    if @round.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @round.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @round = Round.find(params[:id])
    render 'show.json.jbuilder'    
  end

  def update
    @round = Round.find(params[:id])
    @round.name = "#{params[:year]} - #{params[:format]}" || @round.name
    @round.course_id = params[:course_id] || @round.course_id

    if @round.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @round.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @round = Round.find(params[:id])
    @round.destroy
  end

end
