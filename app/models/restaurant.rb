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
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}
  end

  def average_star_rating
    counter = 0
    number_of_reviews = reviews.count
    reviews.each {|review| counter += review.rating}
    average_rating = counter / number_of_reviews
  end

  def longest_review
    longest_content = nil
    review_length = 0
    reviews.each {|review| }
      if review.content.split("").count > review_length
        longest_content = review.content
      end
      longest_content
    ##This might be complete, but I haven't tested
  end

end
