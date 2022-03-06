class KeyWord < ApplicationRecord
    serialize :articles, Array

    validates :name, presence: true
end
