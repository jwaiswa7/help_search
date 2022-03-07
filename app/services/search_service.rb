# frozen_string_literal: true

class SearchService
  def initialize(question:, user_id:)
    @question = question
    @user_id = user_id
  end

  def call
    return false unless is_question

    key_words
    if key_words.count.positive?
      articles = search_articles_for_keywords(key_words)
      Search.create(question: @question, articles:, user_id: @user_id)
      update_search_count(articles)
    end
  end

  private

  def is_question
    return true if @question.last == '?'

    false
  end

  def key_words
    question = @question.downcase.split(/\W+/)
    Article::COMMON_WORDS.each do |w|
      question.delete w
    end

    question
  end

  def search_articles_for_keywords(key_words)
    articles = key_words.map { |k_w| Article.where('key_words &&  ?', "{#{k_w}}").pluck(:id).last }
    articles.delete nil
    articles.uniq
  end

  def update_search_count(articles)
    articles.each do |article_id|
      article = Article.find(article_id)
      article.search_count += 1
      article.save
    end
  end
end
