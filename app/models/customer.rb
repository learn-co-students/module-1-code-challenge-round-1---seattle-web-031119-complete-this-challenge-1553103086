class Customer
  attr_accessor :first_name, :last_name, :restaurant, :rating, :author, :review_count

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @review_count = 0
  end

  def self.all
    @@all
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end

  def num_reviews
    self.review_count
  end

  def all_reviews
    Review.all.select {|review| review.author == self}
  end

  def restaurants
    all_reviews.map {|review| review.restaurant}
  end

end
