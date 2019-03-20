require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jon = Customer.new("jon", "isweird")
jon2 = Customer.new("jon", "issuperweird")
mera = Customer.new("mera", "person")
joe = Customer.new("joe", "dude")

gyro_stop = Restaurant.new("gyro stop")
mai_thaiku = Restaurant.new("Mai Thaiku")

r1 = Review.new(mai_thaiku, jon, "Tha bomb", 5)
r2 = Review.new(mai_thaiku, mera, "actually the best", 5)
r3 = Review.new(gyro_stop, joe, "meh", 3)

jon.add_review(gyro_stop, "good greek fries", 4)
jon2.add_review(mai_thaiku, "seriously go here", 5)
mera.add_review(gyro_stop, "iz aight", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
