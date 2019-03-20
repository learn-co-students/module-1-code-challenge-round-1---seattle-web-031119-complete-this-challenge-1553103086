class Review
  attr_accessor :name, :rating, :content, :restaurant
  attr_reader :customer

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

end
