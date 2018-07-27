class Ride
  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance.to_f
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  def self.average_distance
    distances_for_rides = all.map do |ride|
      ride.distance
    end
    distances_for_rides.inject(:+) / distances_for_rides.size
  end
end
