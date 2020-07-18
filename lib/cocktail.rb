class Cocktail

  attr_accessor :name, :instructions, :drinks, :ingredients

  @@all = []

  

  def initialize(name, instructions, ingredients)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
    @@all << self

  end

  def self.all
    @@all
  end

  def drink_name
    puts self.name
  end

  def self.instructions
    puts @instructions 
  end

  def self.ingredients
    @ingredients
  end
end