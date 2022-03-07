# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Searches', type: :request do
  let(:user) { FactoryBot.create :user }
  before(:all) do 
    FactoryBot.create :article
  end
  describe 'GET /new' do
    it 'returns http success' do
      get new_users_search_path(user)
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do 
    it "creates a new search record" do 
      post users_searches_path(user), params: {
        question: "How is the assignment?", 
        user_id: user.id
      }

      expect(Search.count).to eq(1) # a new search record is created
      expect(Search.last.articles.count).to eq(1) # an article is found with the seach
      expect(Article.last.search_count).to eq(1) # search count on the article increases by 1
    end
  end
end
