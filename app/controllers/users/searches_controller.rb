# frozen_string_literal: true

module Users
  class SearchesController < ApplicationController
    before_action :set_user
    def new
      @searches = @user.searches.group(:question).count
    end

    def create
        SearchService.new(question: params[:question], user_id: params[:user_id]).call 
        head :ok
    end

    private 
    def set_user 
        @user = User.find(params[:user_id])
    end
  end
end
