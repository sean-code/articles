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

end

mag = Magazine.new(name: 'Shujaaz', category: 'Comic')

puts mag.name
puts mag.category

