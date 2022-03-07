# frozen_string_literal: true

FactoryBot.define do
  factory :search do
    question { "How is the assignment" }
    association :user
  end
end
