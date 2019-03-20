require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

abe = Customer.new("Abe","Lee")
joe = Customer.new("Joe","Yang")
joe2 = Customer.new("Joe","Kim")
tim = Customer.new("Tim","Smith")
puts "--------------Customers------------------"
p Customer.all
puts
canlis = Restaurant.new("Canlis")
mcd = Restaurant.new("McDonalds")
applebees = Restaurant.new("Applebees")
puts "--------------Restaurants------------------"
p Restaurant.all
puts
r1 = Review.new(abe, canlis, 5, "Awesome")
r2 = Review.new(joe, mcd, 1, "I'm not lovin it")
r3 = Review.new(joe, applebees, 2, "Meh")
r3a = Review.new(joe, applebees, 3, "Better")
r4 = Review.new(joe2, applebees, 4, "So good")
r5 = Review.new(tim, applebees, 5, "My favorite")
r5 = Review.new(tim, mcd, 1, "Ewwww")
puts "--------------Reviews------------------"
p Review.all
puts

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
