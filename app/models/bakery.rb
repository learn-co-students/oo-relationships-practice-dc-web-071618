class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  # Instance Methods
  def ingredients
    desserts.map do |dessert|
      dessert.ingredients
    end.flatten
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def shopping_list
    ingredients.map do |ingredient|
      ingredient.name
    end
  end

  def average_calories
    calories_by_dessert = desserts.map do |dessert|
      dessert.calories
    end

    calories_by_dessert.inject(:+) / calories_by_dessert.size
  end
end
