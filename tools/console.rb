require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


billymadison = Customer.new("billy", "madison")
billyidol = Customer.new("billy", "idol")
merastackhouse = Customer.new("mera", "stackhouse")
merastackhouse2 = Customer.new("mera", "stackhouse")

puts "----------------- Customer instances ------------"
p Customer.all
puts

sallys = Restaurant.new("sallys")
macaronis = Restaurant.new("macaronis")
macaronis2 = Restaurant.new("macaronis")

puts "----------------- Restaurant instances ------------"
p Restaurant.all
puts


r1 = Review.new(sallys, merastackhouse, 2, "Not great")
r2 = Review.new(sallys, billyidol, 2, "Wonderfullllllllllllllllllllll")
r3 = Review.new(macaronis, merastackhouse, 4, "I like macaroni")
r5 = Review.new(macaronis, billyidol, 2, "I don't like macaroni")
r4 = Review.new(sallys, billymadison, 4, "it's pretty hip")

puts "----------------- Review instances ------------"
p Review.all
puts



puts "Customer.find_by_name(mera stackhouse)---------"
p Customer.find_by_name("mera stackhouse")

puts "Customer.find_all_by_first_name(billy)------------"
p Customer.find_all_by_first_name("billy")

puts "Customer.all_names---------------"
p Customer.all_names

puts "Restaurant.find_by_name(macaronis)----------"
p Restaurant.find_by_name("macaronis")

puts "r1.customer----------------"
p r1.customer

puts "r2.customer-------------------"
p r2.customer

puts "r1.restaurant---------------"
p r1.restaurant

puts "r3.restaurant---------------"
p r3.restaurant

puts "r2.rating -----------------"
p r2.rating

puts "r3.rating -----------------"
p r3.rating

puts "r1.content ---------"
p r1.content

puts "r2.content ---------"
p r2.content


puts "-------------------Special Methods--------------------"


puts " billymadison. add review (sallys, so good, 1)"
p billymadison.add_review(sallys, "so good", 1)

puts "billyidol. num reviews -----------------"
p billyidol.num_reviews
puts "merastackhouse. num reviews -------------------"
p merastackhouse.num_reviews

puts "merastackhouse . restaurants----------------"
p merastackhouse.restaurants

puts "billymadison . restaurants----------------"
p billymadison.restaurants

puts "sallys . customers------------------"
p sallys.customers

puts "sallys. reviews -----------------------"
p sallys.reviews

puts "macaronis. reviews ------------------"
p macaronis.reviews

puts "macaronis. ratings--------------------"
p macaronis.ratings

puts "sallys . average_star_rating---------------"
p sallys.average_star_rating

puts "macaronis . average_star_rating---------------"
p macaronis.average_star_rating

puts "sallys. longest_review-------------------"
p sallys.longest_review

puts "macaronis. longest_review-------------------"
p macaronis.longest_review




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
