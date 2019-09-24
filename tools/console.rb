require_relative '../config/environment.rb'

# Creating Artists
leo = Artist.new("Leonardo Da Vinci", 20)
gogh = Artist.new("Van Gogh", 15)

# Creating Galleries
moma = Gallery.new("MOMA", "NYC")
louvre = Gallery.new("Louvre", "Paris")

# Creating Paintings
mona = Painting.new(leo, louvre, "Mona Lisa", 200)
sunflower = Painting.new(gogh, moma, "Sunflower Fields", 50)
nature = Painting.new(gogh, louvre, "Nature is cool", 1000)

leo.create_painting("David and Goliath", 200, louvre)



binding.pry

puts "Bob Ross rules."
