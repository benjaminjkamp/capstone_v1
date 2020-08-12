class Api::TournamentsController < ApplicationController

  # before_action :authenticate_commissioner, only: [:update, :destroy]


  def index
    @tournaments = Tournament.all
    render 'index.json.jbuilder'
  end

  def create
    @tournament = Tournament.new(
      name: params[:name],
      user_id: current_user.id,
      year: params[:year] || 2020,

      red_team_2mantotal: 0,
      red_team_2manbb: 0,
      red_team_altshot: 0,
      red_team_stableford: 0,
      red_team_head2head: 0,

      blue_team_2mantotal: 0,
      blue_team_2manbb: 0,
      blue_team_altshot: 0,
      blue_team_stableford: 0,
      blue_team_head2head: 0      
      )

    if @tournament.save
      @commissioner = User.find(@tournament.user_id)
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
      
      @tournament.red_team_2mantotal = params[:red_team_2mantotal] || @tournament.red_team_2mantotal
      @tournament.red_team_2manbb = params[:red_team_2manbb] || @tournament.red_team_2manbb
      @tournament.red_team_altshot = params[:red_team_altshot] || @tournament.red_team_altshot
      @tournament.red_team_stableford = params[:red_team_stableford] || @tournament.red_team_stableford
      @tournament.red_team_head2head = params[:red_team_head2head] || @tournament.red_team_head2head

      @tournament.blue_team_2mantotal = params[:blue_team_2mantotal] || @tournament.blue_team_2mantotal
      @tournament.blue_team_2manbb = params[:blue_team_2manbb] || @tournament.blue_team_2manbb
      @tournament.blue_team_altshot = params[:blue_team_altshot] || @tournament.blue_team_altshot
      @tournament.blue_team_stableford = params[:blue_team_stableford] || @tournament.blue_team_stableford
      @tournament.blue_team_head2head = params[:blue_team_head2head] || @tournament.blue_team_head2head
      
      

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
