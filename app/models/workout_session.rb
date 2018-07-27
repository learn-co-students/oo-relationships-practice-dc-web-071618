class WorkoutSession
  attr_accessor :location, :client

  @@all = []

  def initialize(location, client)
    @location = location
    @client = client
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end
end
