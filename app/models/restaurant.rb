class Restaurant

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    my_reviews = Reviews.all.select {|review| review.restaurant == self}

    my_reviews.map {|review| review.customer}.uniq
  end

  def reviews
    my_reviews = Reviews.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    my_reviews = Reviews.all.select {|review| review.restaurant == self}

    ratings = my_review.map {|review| review.rating}

    total =ratings.inject {|sum,n| sum + n}

    return total/ratings.count

  end

  def longest_review
      my_reviews = Reviews.all.select {|review| review.restaurant == self}

      longest_one = ''

      my_reviews.each do |review|
        if review.content.length > longest_one.legnth
          longest_one = review.content
        else
          nil
        end
      end
      longest_one 
  end

  def self.all
    @@all
  end

end
