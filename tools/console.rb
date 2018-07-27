require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# --GYM EXERCISE--
downtown = Location.new("Downtown")
suburbs = Location.new("Suburbs")
street = Location.new("Street")

caleb = Trainer.new("Caleb")
marc = Trainer.new("Marc")
kyle = Trainer.new("Kyle")

john = Client.new(name: "John", trainer: marc)
tyler = Client.new(name: "Tyler", trainer: kyle)
greg = Client.new(name: "Greg", trainer: caleb)
joe = Client.new(name: "Joe", trainer: marc)
dustin = Client.new(name: "Dustin")
josh = Client.new(name: "Josh")

wo1 = WorkoutSession.new(downtown, john)
wo2 = WorkoutSession.new(suburbs, tyler)
wo3 = WorkoutSession.new(street, greg)
wo4 = WorkoutSession.new(downtown, tyler)
wo5 = WorkoutSession.new(downtown, john)
wo6 = WorkoutSession.new(street, greg)

dustin.assign_trainer(marc)
josh.assign_trainer(kyle)

# --CROWDFUNDING EXERCISE--
# john = User.new("John")
# tyler = User.new("Tyler")
# caleb = User.new("Caleb")
# greg = User.new("Greg")
# ray = User.new("Ray")
#
# fixing = Project.new(john, 10000000)
# building = Project.new(tyler, 500000)
# wrecking = Project.new(greg, 30000)
# worthless = Project.new(ray, 1000000000)
#
# pledge1 = Pledge.new(caleb, fixing, 3000)
# pledge2 = Pledge.new(tyler, wrecking, 30000)
# pledge3 = Pledge.new(john, fixing, 40000)
# pledge4 = Pledge.new(tyler, building, 100000)
# pledge5 = Pledge.new(greg, fixing, 10000)
# pledge6 = Pledge.new(tyler, fixing, 50)

# --IMDB EXERCISE--
# nick = Actor.new("Nick")
# jon = Actor.new("Jon")
# audrey = Actor.new("Audrey")
# tina = Actor.new("Tina")
#
# python = Movie.new("Monty Python")
# ruby = Movie.new("Hidden Gems")
# bobby = Movie.new("Bob's Burgers")
#
# parks_and_rec = Show.new("Parks and Recreation")
# office = Show.new("The Office")
# bobs = Show.new("Bob's Burgers")
#
# jim = Character.new(jon)
# april = Character.new(audrey)
# leslie = Character.new(tina)
# bob = Character.new(nick)
# linda = Character.new(audrey)
#
# a1 = Appearance.new(movie: bobby, character: bob)
# a2 = Appearance.new(movie: ruby, character: jim)
# a3 = Appearance.new(show: parks_and_rec, character: april)
# a4 = Appearance.new(movie: bobby, character: jim)

# --LYFT EXERCISE--
# leslie = Driver.new("Leslie")
# ron = Driver.new("Ron")
# michael = Driver.new("Michael")
# dwight = Driver.new("Dwight")
#
# andy = Passenger.new("Andy")
# april = Passenger.new("April")
# jim = Passenger.new("Jim")
# pam = Passenger.new("Pam")
#
# r1 = Ride.new(andy, leslie, 2.3)
# r2 = Ride.new(jim, michael, 5.3)
# r3 = Ride.new(pam, dwight, 8.9)
# r4 = Ride.new(april, ron, 10.4)
# r5 = Ride.new(jim, ron, 70.8)
# r6 = Ride.new(jim, leslie, 60.4)
# r7 = Ride.new(april, michael, 90.6)
# r8 = Ride.new(andy, ron, 97.8)

# --BAKERY EXERCISE--
# bakery1 = Bakery.new("Shake and Bake")
# bakery2 = Bakery.new("Modern Bakefare")
#
# cake = Dessert.new("Cake", bakery1)
# pie = Dessert.new("Pie", bakery2)
# brownies = Dessert.new("Brownies", bakery1)
# sundae = Dessert.new("Sundae", bakery1)
#
# nirnroot = Ingredient.new("Nirnroot", cake, 300)
# mists = Ingredient.new("Mists of Niflheim", cake, 50)
# eye = Ingredient.new("Eye of Newt", brownies, 10000)
# giant = Ingredient.new("Giant's Big Toe", pie, 10000)
# slug = Ingredient.new("Cave Slug", sundae, 250)
# slug2 = Ingredient.new("Giant Slug", sundae, 200)

# --AIR BNB EXERCISE--
# new_york = Listing.new("New York")
# dc = Listing.new("Washington D.C.")
# new_york2 = Listing.new("New York")
# phoenix = Listing.new("Phoenix")
#
# john = Guest.new("John")
# ron = Guest.new("Ron")
# leslie = Guest.new("Leslie")
# andy = Guest.new("Andy")
# andy2 = Guest.new("Andy")
# april = Guest.new("April")
# april2 = Guest.new("April")
# april3 = Guest.new("April")
#
# t1 = Trip.new(new_york, john)
# t2 = Trip.new(dc, john)
# t3 = Trip.new(dc, ron)
# t4 = Trip.new(phoenix, ron)
# t5 = Trip.new(phoenix, leslie)
# t6 = Trip.new(phoenix, john)
# t7 = Trip.new(new_york2, leslie)

Pry.start
