class Restaurant
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

 def self.all
 @@all
 end

 def self.find_by_name(name)
   @@all.find {|restaurant| restaurant.name == name}
 end

 def customers
   self.reviews.collect {|review| review.customer}.uniq
 end

 def reviews
   Review.all.select {|review| review.restaurant == self}
 end

 def average_star_rating
   reviews.collect {|review| review.rating}.inject(:+) / reviews.count
 end

 def longest_review
   reviews.collect {|review| review.content}.max_by {|review| review.length}
 end

end
