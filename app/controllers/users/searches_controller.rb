# frozen_string_literal: true

module Users
  class SearchesController < ApplicationController
    def new; end

    def create
        SearchService.new(question: params[:question], user: params[:user_id]).call 
        head :ok
    end
  end
end
