class Api::UsersController < ApplicationController

  before_action :authenticate_user, only: [:index, :show, :update, :destroy]

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],

      team_color: "None",
      avg_gnc: params[:avg_gnc] || 0,
      avg_two_year: params[:avg_two_year] || 0.00,
      ryder_cup_wins: params[:ryder_cup_wins] || 0,
      ryder_cup_losses: params[:ryder_cup_losses] || 0,
      ryder_cup_ties: params[:ryder_cup_ties] || 0,
      record_2017: params[:record_2017] || "0-0-0",
      handicap_low_net: params[:handicap_low_net] || 0,
      handicap_skins: params[:handicap_skins] || 0
      )
    if @user.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    if params[:id] == "me"
      @user = current_user
    else
      @user = User.find(params[:id])
    end
    render 'show.json.jbuilder'
  end

  def update
    if params[:id] == "me"
      @user1 = current_user
    else
      @user1 = User.find(params[:id])
    end
    @user = current_user
    @user1.first_name = params[:first_name] || @user1.first_name
    @user1.last_name = params[:last_name] || @user1.last_name
    @user1.phone_number = params[:phone_number] || @user1.phone_number
    @user1.email = params[:email] || @user1.email

    @admin_restricted = false
    if params[:admin] != nil && authenticate_commissioner
      @user1.admin = params[:admin]      
    end

    if params[:team_color] == "Red" || params[:team_color] == "Blue"
      @user1.team_color = params[:team_color]
    elsif params[:team_color]
      @user1.team_color = "None"
    end

    @user1.avg_gnc = params[:avg_gnc] || @user1.avg_gnc
    @user1.avg_two_year = params[:avg_two_year] || @user1.avg_two_year
    @user1.ryder_cup_wins = params[:ryder_cup_wins] || @user1.ryder_cup_wins
    @user1.ryder_cup_losses = params[:ryder_cup_losses] || @user1.ryder_cup_losses
    @user1.ryder_cup_ties = params[:ryder_cup_ties] || @user1.ryder_cup_ties
    @user1.record_2017 = params[:record_2017] || @user1.record_2017
    @user1.handicap_low_net = params[:handicap_low_net] || @user1.handicap_low_net
    @user1.handicap_skins = params[:handicap_skins] || @user1.handicap_skins

    if @admin_restricted
    else
      if @user1.save
        render 'show.json.jbuilder'
      else
        render json:{errors: @users.errors.full_messages}, status: :unprocessable_entity
      end
    end
  end
    
  def destroy
    @user = current_user
    @user.destroy
    @users = User.all
    render json:{message: "User has been deleted."}
  end



end
