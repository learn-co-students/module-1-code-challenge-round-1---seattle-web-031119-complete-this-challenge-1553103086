class Customer
  attr_accessor :first_name, :last_name

  @@all = [ ]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |cust| cust.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select { |cust| cust.first_name == name}
  end

  def self.all_names
    self.all.map( &:full_name )
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select { |review| review.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map( &:restaurant ).uniq
  end

end
