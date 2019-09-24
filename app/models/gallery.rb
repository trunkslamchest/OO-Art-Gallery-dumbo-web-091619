class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    self.artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    self.paintings.max_by do |painting|
      painting.price
    end
  end









  def self.all
    @@all
  end

end
