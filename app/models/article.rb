# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, :body, presence: true

  COMMON_WORDS = %w[a am and come here how i is is of the this was when where who].freeze

  before_validation :find_key_words

  def find_key_words
    return if body.nil?

    text = body.downcase.split(/\W+/)
    Article::COMMON_WORDS.each do |w|
      text.delete w
    end
    self.key_words = text
  end
end
