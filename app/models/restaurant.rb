class Restaurant
  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end

  def customers
    self.reviews.map( &:customer ).uniq
  end

  def average_star_rating
    total_stars = 0
    reviews.each { |review| total_stars += review.rating}
    total_stars.to_f / reviews.count
  end

  def longest_review
    self.reviews.max_by { |review| review.content.length}
  end

  def frequent_flier
    # Returns customer who has left the most reviews
    most_reviews = 0
    customer_w_most_reviews = nil
    Customer.all.each do |customer|
      if customer
        .reviews
        .select { |review| review.restaurant == self}
        .count > most_reviews
        most_reviews = customer.reviews.select { |review| review.restaurant == self}.count
        customer_w_most_reviews = customer
      end
    end
    "Your biggest customer is #{customer_w_most_reviews.full_name}, with #{most_reviews} reviews."
  end
end
