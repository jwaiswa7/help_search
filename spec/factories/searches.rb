# frozen_string_literal: true

FactoryBot.define do
  factory :search do
    question { 'MyString' }
    articles { 'MyText' }
  end
end
