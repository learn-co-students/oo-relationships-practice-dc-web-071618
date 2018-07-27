class Driver
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

  def self.mileage_cap(miles)
    all.select do |driver|
      driver.driver_distance > miles
    end
  end

  # Instance Methods
  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def driver_distance
    rides.map do |ride|
      ride.distance
    end.inject(:+)
  end

  def passengers
    rides.map do |ride|
      ride.passenger
    end
  end
end
