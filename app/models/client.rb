class Client
  attr_accessor :name, :trainer

  @@all = []

  def initialize(name:, trainer: nil)
    @name = name
    @trainer = trainer
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  # Instance Methods
  def assign_trainer(trainer)
    self.trainer = trainer
  end
end
