class Show
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
  def characters
    Character.all.select do |character|
      character.show == self
    end
  end

  def actors
    characters.map do |character|
      character.actor
    end
  end

  def movies
    characters.map do |character|
      character.movie
    end
  end

  def on_the_big_screen
    movie_names = Movie.all_movie_names
      
    self.class.all.select do |show|
      movie_names.include?(show.name)
    end
  end
end
