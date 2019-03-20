class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def num_reviews
    self.reviews.count
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map{|review| review.rating}
  end

  def sum_ratings
    self.ratings.reduce(0) {|acc, rating| acc += rating}
  end

  def average_star_rating
    has_reviews? ? self.sum_ratings / self.num_reviews : "unrated"
  end

  def has_reviews?
    reviews.count > 0
  end

  def longest_review
    has_reviews? ? self.reviews.max_by{|review| review.content.length}.content : ""
  end

  def self.find_by_name(name)
    @@all.find{|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end
end
