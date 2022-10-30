# Please copy/paste all three classes into this file to submit your solution!

# Article
class Article

    attr_reader :author, :magazine, :title

    @@all = []

    def initialize(author:, magazine:, title:)
        @author = author
        @magazine = magazine
        @title = title
    end

    def self.all 
        @@all
    end

end


# Author
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

#   Magazine
class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def self.all
      @@all
    end
  
    def initialize(name:, category:)
      @name = name
      @category = category
      @@all << self
    end
  
    def contributors
      Article.all.filter do |magz|
        magz.magazine == self
      end.collect do |m|
        m.author
      end
    end
  
    def find_by_name(name)
      self.all.find {magazine.name == name}
    end
  
    def article_titles
      Article.all.filter do |magazine|
        magazine.magazine == self
      end.collect do |article|
        article.title
      end
    end
  
  end

