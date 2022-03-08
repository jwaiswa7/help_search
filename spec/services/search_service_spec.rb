# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SearchService, type: :model do
  describe '#call' do
    let(:user) { FactoryBot.create :user }
    before(:all) do
      FactoryBot.create(:article)
    end

    it 'records search and finds an article' do
      SearchService.new(question: 'How is the assignment?', user_id: user.id).call
      expect(Search.count).to eq(1) # a search record is created
      expect(Search.last.articles.count).to eq(1) # Article is found with the search
      expect(Article.last.search_count).to eq(1) # search count on the article is incremented
    end

    it 'records search, but no article is found' do
      SearchService.new(question: 'How is the work?', user_id: user.id).call
      expect(Search.count).to eq(1) # a search record is created
      expect(Search.last.articles.count).to eq(0) # No article is found with the search
      expect(Article.last.search_count).to eq(0) # search count on the article is still 0
    end

    it "doesn't record a search" do
      SearchService.new(question: 'How is the?', user_id: user.id).call
      expect(Search.count).to eq(0) # no search is recorded
    end

    it 'requres a question mark for serch to run' do
      SearchService.new(question: 'How is the assignment', user_id: user.id).call
      expect(Search.count).to eq(0) # no search record is created
    end
  end
end
