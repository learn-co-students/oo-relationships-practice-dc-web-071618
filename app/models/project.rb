class Project
  attr_accessor :user, :project_goal

  @@all = []

  def initialize(user, project_goal)
    @user = user
    @project_goal = project_goal
    @@all << self
  end

  # Class Methods
  def self.all
    @@all
  end

  def self.no_pledges
    all.select do |project|
      project.pledges.size == 0
    end
  end

  def self.most_backers
    all.sort_by do |project|
      project.unique_backers.size
    end[-1]
  end

  def self.above_goal
    all.select do |project|
      project.met_goal?
    end
  end

  # Instance Methods
  def pledges
    Pledge.all.select do |pledge|
      pledge.project == self
    end
  end

  def total_pledge_amount
    pledges.map do |pledge|
      pledge.amount
    end.inject(:+)
  end

  def unique_backers
    pledges.map do |pledge|
      pledge.user
    end.uniq
  end

  def met_goal?
    !!(total_pledge_amount.to_i >= project_goal)
  end
end
