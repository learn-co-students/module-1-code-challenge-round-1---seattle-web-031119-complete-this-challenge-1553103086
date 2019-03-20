require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "-----MAKE CUSTOMERS AND TEST ALL-------"
#TEST CUSTOMER CREATION
p jerry = Customer.new("Jerry", "Whiting")
p rylan = Customer.new("Rylan", "Bauermeister")
p ben = Customer.new("Ben", "Bauermeister")
p clyde = Customer.new("Clyde", "McQueen")
p mark = Customer.new("Mark", "Craemer")
p blount = Customer.new("Ben", "Blount")

Customer.all.each_with_index do |person, index|
  puts "#{index + 1} - #{person.full_name}"
end
puts "\n"

puts "-----FIND CUSTOMERS BY NAME-------"
puts "Finding Jerry Whiting..."
p Customer.find_by_name("Jerry Whiting")
puts "Finding Ben Blount..."
p Customer.find_by_name("Ben Blount")
puts "\n"

puts "-----FIND CUSTOMERS BY FIRST NAME-------"
puts "Find all Bens"
Customer.find_by_first_name("Ben").each do |ben|
  p ben
end
puts "\n"

puts "-----PRINT ALL CUSTOMER NAMES-------"
Customer.all_names.each do |name|
  puts name
end
puts "\n"

puts "-----CREATE RESTAURANTS AND TEST ALL-------"
p laspiga = Restaurant.new("Osteria La Spiga")
p fb = Restaurant.new("Fremont Brewing")
p yard = Restaurant.new("The Yard")
p sbar = Restaurant.new("Satay Bar")
p bizzaro = Restaurant.new("Bizzaro's")

p Restaurant.all
puts "\n"

puts "-----TEST RESTAURANT FIND BY NAME-------"
puts "Finding La Spiga..."
p Restaurant.find_by_name("Osteria La Spiga")
puts "Finding Satay Bar..."
p Restaurant.find_by_name("Satay Bar")
puts "Finding non-real..."
p Restaurant.find_by_name("Jack's Hack Shop")
puts "\n"

puts "----ADDING REVIEWS BY CUSTOMER----------"
p rylan.add_review(laspiga, "This place is fantastic.", 5)
p rylan.add_review(yard, "Surprisingly good food for a bar.", 4.5)
p rylan.add_review(bizzaro, "Great place, long wait.", 4)
p rylan.add_review(fb, "Wonderful, but always packed and no food.", 3.5)

p jerry.add_review(bizzaro, "Penalized me for talking on my cell phone.  What the fuck!", 1)
p jerry.add_review(fb, "Wow.  What a wonderful place.", 5)

p clyde.add_review(fb, "Great weekly meeting spot for my gang.", 4)
p ben.add_review(fb, "Come here most weeks and love it.", 5)
p ben.add_review(yard, "For food, beer, business or tea, the yard exceeds expectations.  Shoutout to Kate!", 5)
puts "\n"

puts "-----TEST NUM REVIEWS-------"
puts "Rylan should have 4 reviews.  Has..."
puts rylan.num_reviews
puts "Ben should have 2 reviews.  Has..."
puts ben.num_reviews
puts "Mark should have 0 reviews.  Has..."
puts mark.num_reviews
puts "\n"

puts "-----TEST RESTAURANTS-------"
puts "Ben should have Fremont Brewing and The Yard on record.  Has..."
p ben.restaurants
puts "Clyde should have Fremont Brewing on record.  Has..."
p clyde.restaurants
puts "\n"

puts "-----TEST RESTAURANT CUSTOMERS-------"
puts "The Yard should know it has been visited by Rylan and Ben.  Has..."
p yard.customers
puts "Satay Bar should know it has been visited by nobody.  Has..."
p sbar.customers
puts "\n"

puts "-----TEST RESTAURANT REVIEWS-------"
puts "Fremont Brewing should have 4 reviews.\nNum reviews:"
puts fb.num_reviews
puts "Reviews:"
p fb.reviews
puts "La Spiga should have one review.\nNum reviews:"
puts laspiga.num_reviews
puts "Reviews:"
p laspiga.reviews
puts "\n"

puts "-----TEST RESTAURANT AVERAGE STAR RATING-------"
puts "Fremont Brewing should have an average rating of 4.375.  Has..."
puts fb.average_star_rating
puts "La Spiga should have an average rating of 5.  Has..."
puts laspiga.average_star_rating
puts "Satay Bar has no rating as of yet.  It should return 'unrated'."
puts sbar.average_star_rating

puts "-------TEST LONGEST REVIEW----------"
puts "The Yard's Longest review is by Ben, and starts with: For food..."
puts yard.longest_review
puts "Satay Bar has no reviews, and should return an empty string if asked for its longest."
puts sbar.longest_review



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
