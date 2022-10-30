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

# mag = Magazine.new(name: 'Shujaaz', category: 'Comic')

# puts mag.name
# puts mag.category

