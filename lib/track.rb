#require 'pry'

class Track

  attr_reader :title, :artists, :duration, :price, :discount, :discount_percentage

  def initialize(title:, artists:, duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
  end

  def discount(discount_percentage)
    @discount_percentage = discount_percentage
    @price = price * (1 - discount_percentage)
  end
  def reset
    @price = price * (1 / (1 - discount_percentage))
    @discount_percentage = 0
    @price
  end
end

#binding.pry
