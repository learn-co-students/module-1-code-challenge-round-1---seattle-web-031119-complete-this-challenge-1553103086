class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name  = last_name.capitalize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(search_name)
    self.all.find {|customer| customer.full_name.downcase == search_name.downcase}
  end

  def self.find_all_by_first_name(search_first_name)
    self.all.select {|customer| customer.first_name.downcase == search_first_name.downcase}
  end

  def self.all_names
    self.all.collect {|customer| customer.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.collect {|review| review.restaurant}.uniq
  end
end
