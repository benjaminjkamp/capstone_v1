class Api::RoundsController < ApplicationController

  before_action :authenticate_user

  def index
    @rounds = Round.all
    render 'index.json.jbuilder'    
  end

  def create
    @round = Round.new(
      name: "#{params[:year]} - #{params[:format]}",
      course_id: params[:course_id],
      tournament_id: params[:tournament_id],
      format: params[:format]
      )

    if @round.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @round.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @round = Round.find(params[:id])
    if @round
      render 'show.json.jbuilder'  
    else
      render json:{errors: @round.errors.full_messages, message: "Round Not Found."}, status: :unprocessable_entity
    end  
  end

  def update
    @round = Round.find(params[:id])
    @tournament = Tournament.find(@round.tournament_id)

    @round.name = params[:name] || @round.name
    @round.course_id = params[:course_id] || @round.course_id
    if params[:finalized] != nil
      @round.finalized = params[:finalized]
      if params[:finalized]
        wins = @round.update_standings(@round, @tournament)
      end
    end



    if @round.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @round.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @round = Round.find(params[:id])
    @round.destroy
    render json:{message: "Round has been deleted."}
  end

end
