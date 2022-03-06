# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(sessions_params[:email])
    if user
      redirect_to new_users_search_path(user)
    else
      redirect_to root_path, notice: 'User not found'
    end
  end

  private

  def sessions_params
    params.require(:user).permit(:email)
  end
end
