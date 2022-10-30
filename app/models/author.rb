require_relative 'article'

class Author
  attr_accessor :name, :magazines, :articles

  def initialize(name)
    @name = name
  end

  def articles 
    Article.all.filter do |article|
      article.author == self
    end
  end

  def magazines 
    articles.collect do |article|
     article.magazine.
    end.uniq
  end

  def add_article(magazine:, title:)
    Article.new(magazine, title)
  end

  def topic_areas
    magazines.collect do |mag|
      mag.category
    end
  end
  
end

