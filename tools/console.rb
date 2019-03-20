require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

####Customers
quinn = Customer.new("Quinn", "Cox")
will = Customer.new("Will", "Smith")
ann = Customer.new("Ann", "Sanders")
ann2 = Customer.new("Ann", "Williams")

#run find_all_by_first_name("Ann") and it should return 2 in the terminal.  It should return 1 for "Will" and "Quinn".  Tested and works in the terminal

#run all_names and it should return an array of all the full names in an array.  Tested and works in the terminal

#I created a new method to gather all a customers reviews.  I then ran .map over that method to find what restaurants the review included.

####Restaurants
tomato = Restaurant.new("Tomato Palace")
vegan = Restaurant.new("Vegan Victory")
meat = Restaurant.new("Meat Lovers")

#I created a new method (.all_reviews) to gather all a restaurants reviews.  I then ran .map over that method to find what customers the review included.

####Reviews

rev1 = quinn.add_review(tomato, 4, "Good good food")
rev2 = quinn.add_review(vegan, 3, "Very vegan.  Love it! #vegan")
rev3 = will.add_review(tomato, 2, "I hate tomatoes.")
rev4 = ann.add_review(meat, 5, "Meat is sooooo good!")

#Tests for #customer and #restaurant and #rating work in the Terminal

#I created a counter so that every time a review is added, that author's counter gets a +1.  Then I can call that to see how many reviews they have left.

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
