class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.highest_pledge
    Pledge.all.sort_by do |pledge|
      pledge.amount
    end[-1].user
  end

  def self.multi_pledger
    all.select do |user|
      user.unique_projects_pledged_to.size > 1
    end
  end

  def self.project_creator
    all.select do |user|
      user.projects.size > 0
    end
  end

  # Instance Methods
  def projects
    Project.all.select do |project|
      project.user == self
    end
  end

  def pledges
    Pledge.all.select do |pledge|
      pledge.user == self
    end
  end

  def highest_pledge
    pledges.sort_by do |pledge|
      pledge.amount
    end[-1]
  end

  def unique_projects_pledged_to
    pledges.map do |pledge|
      pledge.project
    end.uniq
  end
end
