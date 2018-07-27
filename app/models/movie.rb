class Movie
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

  def self.most_actors
    all.sort_by do |movie|
      movie.actors.size
    end[-1]
  end

  def self.all_movie_names
    all.map do |movie|
      movie.name
    end
  end

  # Instance Methods
  def characters
    Character.all.select do |character|
      character.movie == self
    end
  end

  def actors
    characters.map do |character|
      character.actor
    end
  end

  def shows
    characters.map do |character|
      character.show
    end
  end
end
