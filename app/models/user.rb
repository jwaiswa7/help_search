# frozen_string_literal: true

class User < ApplicationRecord
  has_many :searches
  validates :name, :email, presence: true
end
