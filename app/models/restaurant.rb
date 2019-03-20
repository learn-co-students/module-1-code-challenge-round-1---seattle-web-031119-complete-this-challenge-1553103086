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
    all.find {|resto|
      resto.name == name
    }
  end

  def customers
    self.reviews.collect {|review|
      review.customer
    }.uniq
  end

  def reviews
    Review.all.select {|review|
      review.restaurant == self
    }
  end

  def ratings
    self.reviews.collect {|review|
      review.rating
    }
  end

  def average_star_rating
    self.ratings.inject(0) {|sum, rating|
      sum + rating
    }.to_f / self.ratings.size
  end

  def longest_review
    self.reviews.max_by {|review|
      review.content.length
    }.content
  end

end
