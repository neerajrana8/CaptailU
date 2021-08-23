class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: { token: token,  message: "user authenticated"}
    else
      render json: {error: "Invalid user credentials"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {current_user: @user.email, auth_token: token}
    else
      render json: {error: "Invalid user credentials"}
    end
  end


  def auto_login
    render json: {current_user: { id: @current_user.id, email: @current_user.email }}
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
