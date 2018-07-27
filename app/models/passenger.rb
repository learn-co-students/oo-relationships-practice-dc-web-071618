class Passenger
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

  def self.premium_members
    all.select do |passenger|
      passenger.total_distance > 100
    end
  end

  # Instance Methods
  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    rides.map do |ride|
      ride.distance
    end.inject(:+)
  end
end
