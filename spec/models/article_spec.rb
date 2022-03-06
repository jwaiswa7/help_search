require 'rails_helper'

RSpec.describe Article, type: :model do 
  let(:article) { FactoryBot.build :article}

  it "Is a valid article" do 
    expect(article).to be_valid
  end

  it "needs a title" do 
    article.title = nil
    expect(article).not_to be_valid
  end

  it "needs a body" do 
    article.body = nil 
    expect(article).not_to be_valid
  end
end
