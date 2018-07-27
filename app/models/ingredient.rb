class Ingredient
  attr_accessor :name, :dessert, :calorie_count

  @@all = []

  def initialize(name, dessert, calorie_count)
    @name = name
    @dessert = dessert
    @calorie_count = calorie_count
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  def self.find_all_by_name(name)
    all.select do |ingredient|
      ingredient.name.downcase.include?(name.downcase)
    end
  end

  # Instance Methods
  def bakery
    Bakery.all.select do |bakery|
      bakery.ingredients.include?(self)
    end
  end
end
