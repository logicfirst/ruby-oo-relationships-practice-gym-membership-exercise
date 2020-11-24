class Gym
  attr_reader :name

  @@all = []
  #Get a list of all gyms
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  #Get a list of all memberships at a specific gym
  def all_memships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end
  #Get a list of all the lifters that have a membership to a specific gym
  def all_lifters
    all_mems = Membership.all.select do |membership|
      membership.gym == self
    end
    all_mems.map do |membership|
      membership.lifter
    end
  end
  #Get a list of the names of all lifters that have a membership to that gym
  def all_lifter_at_gym
    all_mems = Membership.all.select do |membership|
      membership.gym == self
    end
    all_mems.map do |membership|
      membership.lifter
    end
  end
  #Get the combined lift total of every lifter has a membership to that gym
  def com_lift_total
    lift_total_all = 0
    self.all_lifter_at_gym.each do |lifter|
      lift_total_all = lift_total_all += lifter.lift_total
    end
    lift_total_all
  end



end
