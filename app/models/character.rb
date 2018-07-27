class Character
  attr_accessor :movie, :show, :actor

  @@all = []

  def initialize(actor)
    @actor = actor
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  # Instance Methods
  def most_appearances
    self.class.all.sort_by do |character|
      character.appearances.size
    end[-1]
  end

  def appearances
    Appearance.all.select do |appearance|
      appearance.character == self
    end
  end
end
