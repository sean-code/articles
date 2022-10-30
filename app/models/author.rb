class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def articles 
    Article.all.filter do |article|
      article.author == self
    end
  end
  
end

