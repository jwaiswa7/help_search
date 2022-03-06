# frozen_string_literal: true

module Users
  class RegistrationsController < ApplicationController
    def new
      @user = User.new
    end

    def create
      user = User.new(registration_params)
      if user.save
        redirect_to new_users_search_path(user)
      else
        redirect_to new_users_registration, notice: user.errors.full_mesaage
      end
    end

    private

    def registration_params
      params.require(:user).permit(:name, :email)
    end
  end
end
