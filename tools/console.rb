require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# restaurant -= review =- customer

abe = Customer.new("Abe", "Dolinger")
erika = Customer.new("Erika", "Harada")
erika2 = Customer.new("Erika", "Otherfamily")
aya = Customer.new("Aya", "Dolinger")
sam = Customer.new("Sam", "Dolinger")

balcon = Restaurant.new("El Balcon")
aldila = Restaurant.new("Al Di La")
mimis = Restaurant.new("Mimi's Hummus")

rev1 = Review.new(abe, balcon, 5, "Best pork burrito")
rev2 = Review.new(abe, aldila, 5, "Best Northern Italian")
rev3 = Review.new(erika, mimis, 4, "Good hummus")
rev4 = Review.new(erika2, mimis, 2, "I don't know good food")
rev5 = Review.new(aya, balcon, 3, "Too spicy")
rev6 = Review.new(abe, mimis, 3, "I have written an incredibly long diatribe about how this small restaurant does not meet my expectations")
rev7 = Review.new(erika, aldila, 3, "This does not reflect my real opinion")
rev8 = Review.new(abe, balcon, 4, "Something was wrong today")
rev9 = Review.new(aya, balcon, 3, "I went again and it was still too spicy")
rev10 = Review.new(abe, mimis, 5, "Love et")

puts "Bonus methods are: customer.most_reviews, restaurant#frequent_flier, and restaurant.best_reviewed_restaurant"
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
