require 'pry'

class Customer

  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    split_name = name.split
    self.all.find {|customer| customer.first_name == name[0] && customer.last_name == name[1]}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map {|customer|
      customer.first_name + " "+ customer.last_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant,rating,content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    reviews = Review.all.select {|review| review.customer == self}

    reviews.map {|review| review.restaurant}.uniq
  end
  
  def self.all
    @@all
  end

end
