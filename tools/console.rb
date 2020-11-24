# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lift1 = Lifter.new("Buff", 1000)
lift2 = Lifter.new("Ripped", 1200)
lift3 = Lifter.new("Crusher", 1100)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")
gym4 = Gym.new("Gym4")

mem001 = Membership.new(600, gym1, lift1)
mem002 = Membership.new(500, gym2, lift1)
mem003 = Membership.new(800, gym3, lift1)
mem004 = Membership.new(550, gym1, lift2)
mem005 = Membership.new(500, gym2, lift2)
mem006 = Membership.new(850, gym3, lift2)
mem006 = Membership.new(600, gym1, lift3)
mem006 = Membership.new(450, gym2, lift3)
mem006 = Membership.new(800, gym3, lift3)




binding.pry

puts "Gains!"
