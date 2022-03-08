# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Search, type: :model do
  let(:search) { FactoryBot.create :search }

  it 'is valid' do
    expect(search).to be_valid
  end

  it 'is not valid without a question' do
    search.question = nil
    expect(search).not_to be_valid
  end
end
