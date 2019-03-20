class Review

  attr_accessor :rating, :review_count
  attr_reader :author, :restaurant, :content

  @@all = []

  def initialize(author, restaurant, rating, content)
    @author = author
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
    author.review_count += 1
  end

  def self.all
    @@all
  end

  def customer
    self.author
  end

end
