class Article < ApplicationRecord

    validates :title, :body, presence: true 

    after_commit :populate_tags

    private 

    def populate_tags
    end
end
