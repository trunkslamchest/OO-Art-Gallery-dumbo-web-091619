class Painting

  attr_reader :artist, :gallery, :title, :price
  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    all_numbers = @@all.map do |painting|
      painting.price
    end
    all_numbers.sum
    # @@all.reduce(0) {|sum, painting| sum + painting.price }
  end

end
