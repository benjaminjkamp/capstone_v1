class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email]
      )
    if @user.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.email = params[:email] || @user.email
    @user.avg_gnc = params[:avg_gnc] || @user.avg_gnc
    @user.avg_two_year = params[:avg_two_year] || @user.avg_two_year
    @user.ryder_cup_wins = params[:ryder_cup_wins] || @user.ryder_cup_wins
    @user.ryder_cup_losses = params[:ryder_cup_losses] || @user.ryder_cup_losses
    @user.ryder_cup_ties = params[:ryder_cup_ties] || @user.ryder_cup_ties
    @user.record_2017 = params[:record_2017] || @user.record_2017
    @user.handicap_low_net = params[:handicap_low_net] || @user.handicap_low_net
    @user.handicap_skins = params[:handicap_skins] || @user.handicap_skins

    if @user.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @users.errors.full_messages}, status: :unprocessable_entity
    end
  end
    
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    @users = User.all
    render 'index.json.jbuilder'
  end



end
