class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def index
    # logged_in_user.messages
  end

  def new
  end

  def create
    User.create(user_params)
    redirect_to '/'
  end

private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
