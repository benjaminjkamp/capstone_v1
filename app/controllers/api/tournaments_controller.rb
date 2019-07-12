class Api::TournamentsController < ApplicationController

  # before_action :authenticate_commissioner, only: [:update, :destroy]


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
    @commissioner = User.find(@tournament.user_id)
    render 'show.json.jbuilder'
  end

  def update
    @tournament = Tournament.find(params[:id])
    @commissioner = User.find(@tournament.user_id)
    if current_user.id == @tournament.user_id
      @tournament.name = params[:name] || @tournament.name
      @tournament.user_id = params[:user_id] || @tournament.user_id

      if @tournament.save
        render 'show.json.jbuilder'
      else
        render json:{errors: @user.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end



end
