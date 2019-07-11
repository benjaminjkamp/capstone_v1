class Api::TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
    render 'index.json.jbuilder'
  end

  def create
    @tournament = Tournament.new(
      name: params[:name],
      user_id: current_user.id
      )
    if @tournament.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
    render 'show.json.jbuilder'
  end



end
