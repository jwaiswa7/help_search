# frozen_string_literal: true

class Search < SearchBase
  validates :question, presence: true 
end
