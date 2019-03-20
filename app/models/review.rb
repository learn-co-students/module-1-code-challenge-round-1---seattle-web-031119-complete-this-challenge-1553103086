class Review

 attr_accessor :restaurant, :rating, :content
 attr_reader :customer

 @@all = []

 def initialize(customer, restaurant, rating, content)
   @customer = customer
   @restaurant = restaurant
   @rating = rating.to_i
   ######couldn't figure it out in time
   #  if @rating.between?(1,5)
   #    @rating = rating
   #  else
   #    nil
   #  end
   # @rating
   #######
   @content = content
   @@all << self
 end

 def self.all
   @@all
 end



end
