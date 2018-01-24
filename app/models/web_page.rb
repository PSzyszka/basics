# frozen_string_literal: true
# require './article'
# require './articles_file_system'

class WebPage
  def initialize(directory = "/")
    @directory = directory
    @articles  = ArticlesFileSystem.new(directory).load
  end

  def articles
    @articles
  end

  def load
    ArticlesFileSystem.new(@directory).load
  end

  def save
    ArticlesFileSystem.new(@directory).save(@articles)
  end

  def new_article(title, body, author)
    @articles << Article.new(title, body, author)
  end

  def longest_articles
    @articles.sort_by { |article| article.body.length }
  end

  def best_articles
    @articles.sort do |article1, article2|
      article1.likes - article1.dislikes <=> article2.likes - article2.dislikes
    end
  end

  def worst_articles
    @articles.sort do |article1, article2|
      article1.dislikes - article1.likes <=> article2.dislikes - article2.likes
    end
  end

  def best_article
    if @articles == nil
      raise 'WebPage::NoArticlesFound'
    else
      best_articles.slice(0)
    end
  end

  def worst_article
    if @articles == nil
      raise 'WebPage::NoArticlesFound'
    else
      worst_articles.last
    end
  end

  def most_controversial_articles
    @articles.sort do |article1, article2|
      article1.votes <=> article2.votes
    end
  end

  def votes
    @articles.inject { |sum, article| sum + article.votes }
  end

  def authors
    @articles.map { |article| article.author }
  end

  def authors_statistics
    statistics = Hash.new(0)
    @articles.each do |article|
      statistics[article.author] += 1
    end
    statistics
  end

  def best_author
    statistics.sort_by { |key, value| value }.last[0]
  end

  def search(query)
    @articles.select do |article|
      article.contain?(query)
    end
  end
end
