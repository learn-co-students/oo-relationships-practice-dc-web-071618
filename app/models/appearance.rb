class Appearance
  attr_accessor :movie, :show, :character

  @@all = []

  def initialize(movie: nil, show: nil, character:)
    @movie = movie
    @show = show
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end
end
