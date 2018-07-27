class Dessert
  attr_accessor :bakery, :name

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  # Instance Methods
  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def calories
    ingredients.map do |ingredient|
      ingredient.calorie_count
    end.inject(:+)
  end
end
