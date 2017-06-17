class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    #where rating is maximum, give me the name.
    order('rating desc').first
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    order('rating desc').last
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    order('name')
  end

end
