class Location
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

  def self.least_clients
    all.sort_by do |location|
      location.clients.size
    end[0]
  end

  # Instance Methods
  def workouts
    WorkoutSession.all.select do |workout|
      workout.location == self
    end
  end

  def clients
    workouts.map do |workout|
      workout.client
    end
  end
end
