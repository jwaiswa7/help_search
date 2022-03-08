# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build :user }

  it 'Is a valid article' do
    expect(user).to be_valid
  end

  it 'needs a name' do
    user.name = nil
    expect(user).not_to be_valid
  end

  it 'needs a body' do
    user.email = nil
    expect(user).not_to be_valid
  end
end
