class Author
  attr_accessor :name, :magazine, :title

  def initialize(name)
    @name = name
  end

  def articles 
    Article.all.filter do |article|
      article.author == self
    end
  end

  def magazines 
    articles.select do |article|
     article.magazine.
    end.uniq
  end

  def add_article(magazine:, title:)
    Article.new(magazine, title)
  end
  
end

