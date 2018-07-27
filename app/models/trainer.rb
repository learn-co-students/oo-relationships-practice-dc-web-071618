class Trainer
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

  def self.most_clients
    all.sort_by do |trainer|
      trainer.number_of_clients
    end.reverse[0]
  end

  # Instance Methods
  def clients
    Client.all.select do |client|
      client.trainer == self
    end
  end

  def number_of_clients
    clients.count
  end
end
