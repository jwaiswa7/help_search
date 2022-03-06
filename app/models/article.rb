class Article < ApplicationRecord
    serialize :tags, Array

    validates :title, :body, presence: true 

    after_commit :populate_tags

    private 

    def populate_tags
      article_tags = []
      titile.split("")
    end
end
