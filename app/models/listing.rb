class Listing
  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    highest_count = 0
    most_popular = nil

    all.each do |listing|
      if listing.trip_count > highest_count
        highest_count = listing.trip_count
        most_popular = listing
      end
    end
    most_popular
  end

  # Instance Methods
  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    trips.count
  end
end
