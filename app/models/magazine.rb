class Magazine
  attr_accessor :name, :category


  def initialize(name:, category:)
    @name = name
    @category = category

  end

end

mag = Magazine.new(name: "Shujaaz", category: "Comic")

puts mag.name
puts mag.category
