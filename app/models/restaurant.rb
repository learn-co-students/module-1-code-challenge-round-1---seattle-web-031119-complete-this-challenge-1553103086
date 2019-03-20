class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    name_array = name.split(" ")
    @name = name_array.collect {|word| "#{word.capitalize}"}.join(" ")
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(search_name)
    self.all.find {|restaurant| restaurant.name.downcase == search_name.downcase}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.collect {|review| review.customer}.uniq
  end

  def average_star_rating
    #sum the number of reviews using inject,
    #divide by total number of reviews using count,
    #and round to 2 decimals to keep pretty
    (reviews.inject(0) {|sum, review| sum + review.rating}.to_f / reviews.count).round(2)
  end

  def longest_review
    reviews.max_by {|review| review.content.length}.content
  end
end
