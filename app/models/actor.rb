class Actor
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

  def self.most_characters
    all.sort_by do |actor|
      actor.characters.size
    end.last
  end

  # Instance Methods
  def characters
    Character.all.select do |character|
      character.actor == self
    end
  end

  def movies
    characters.map do |character|
      character.movie
    end
  end

  def shows
    characters.map do |character|
      character.show
    end
  end
end
