require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

puts "---------- object initialize ----------"
puts
jon = Customer.new("Jon","Langkammer")
brit = Customer.new("Brit","Lutz")
doug = Customer.new("Doug","Wort")
sayed = Customer.new("Sayed","Raym")

thai_kitchen = Restaurant.new("Thai Kitchen")
indian_cuisine_gw = Restaurant.new("Indian Cuisine Greenwood")
chipotle = Restaurant.new("Chipotle")
fremont_brew = Restaurant.new("Fremont Brewing")
olive_and_grape = Restaurant.new("Olive & Grape")
mcdons = Restaurant.new("McDonalds")

r1 = Review.new(jon,thai_kitchen,4,"Their curry is very good")
r2 = Review.new(jon,mcdons,1,"Has been poisoning our country for decades")
r3 = Review.new(brit,fremont_brew,4,"Sister IPA is great!")
r4 = Review.new(sayed,fremont_brew,3,"I don't drink")
r5 = Review.new(doug,chipotle,4,"Soooo good")
r5 = Review.new(doug,olive_and_grape,5,"Soooo soo good")
r5 = Review.new(jon,olive_and_grape,5,"very tastey stuff")


puts "---------- Class Methods & Properties ----------"
puts
puts "Customer.all"
puts Customer.all
puts
puts "Customer.find_by_name(Jon Langkammer)"
puts Customer.find_by_name("Jon Langkammer")
puts
puts "Customer.find_all_by_first_name(doug)"
puts Customer.find_all_by_first_name("doug")
puts
puts "Customer.all_names"
puts Customer.all_names
puts
puts "Restaurant.all"
puts Restaurant.all
puts
puts "Restaurant.find_by_name(chipotle)"
puts Restaurant.find_by_name("chipotle")

puts "---------- Association Methods ----------"


puts
puts "jon.num_reviews"
puts jon.num_reviews
puts
puts "jon.restaurants"
puts jon.restaurants
puts
puts olive_and_grape.customers

puts "Ran out of time! :("












binding.pry
0 #leave this here to ensure binding.pry isn't the last line
