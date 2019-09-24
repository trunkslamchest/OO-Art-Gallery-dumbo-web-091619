class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.filter do |painting|
      painting.artist() == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(self, gallery, title, price)
  end

  def self.total_experience
    all_artists = @@all.map do |artist|
      artist.years_experience
    end
    all_artists.sum
  end

  def self.most_prolific
    @@all.max_by do |artist_object|
      artist_object.paintings.count.to_f / artist_object.years_experience.to_f
    end
  end











  def self.all
    @@all
  end

end
