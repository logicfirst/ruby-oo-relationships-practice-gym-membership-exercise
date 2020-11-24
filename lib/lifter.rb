class Lifter
  attr_reader :name, :lift_total

  @@all = []
  #Get a list of all lifters 
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end
  #Get a list of all the memberships that a specific lifter has
  def all_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end
  #Get a list of all the gyms that a specific lifter has memberships to
  def all_gyms
    all_mems = Membership.all.select do |membership|
      membership.lifter == self
    end
    all_mems.map do |membership|
      membership.gym  
    end
  end
  #Get the average lift total of all lifters
  def self.avg_lift_total
    lift_total_all = 0
    lift_avg = 0
    self.all.each do |lifter|
      lift_total_all = lift_total_all + lifter.lift_total
      lift_avg = lift_total_all / self.all.count
    end
    lift_avg  
  end
  #Get the total cost of a specific lifter's gym memberships
  def total_cost
    all_mems = Membership.all.select do |membership|
      membership.lifter == self
    end
    lift_total_cost = 0
    all_mems.each do |membership|
      lift_total_cost = lift_total_cost += membership.cost
    end
    lift_total_cost
  end
  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_gym(gym, cost)
    Membership.new(cost, gym, self)
  end
end
