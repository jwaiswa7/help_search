# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { "New user" }
    email { "email@example.com" }
  end
end
