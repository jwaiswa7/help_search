# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, :body, presence: true

  COMMON_WORDS = %w[am and come here how how i is is of the this was when where who].freeze

  before_validation :find_key_words

  def find_key_words
    text = body.split(/\W+/)
    Article::COMMON_WORDS.each do |w|
      text.delete w
    end
    self.key_words = text.join(' ')
  end
end
