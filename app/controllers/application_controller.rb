class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
    auth_headers = request.headers['Authorization']
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: 'HS256' }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_user

  def authenticate_user
    unless current_user
      render json: {errors: "You must be logged in to view this page."}, status: :unauthorized
    end
  end

  def authenticate_self
    unless @score.user_id == current_user.id
      render json: {errors: "You cannot edit another player's data."}, status: :unauthorized
      return false
    end
    return true
  end

  # def authenticate_commissioner
  #   unless current_user.id == @tournament.user_id
  #     render json: {}, status: :unauthorized
  #   end
  # end
end