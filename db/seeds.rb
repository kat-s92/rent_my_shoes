# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "pry-byebug"

puts "Cleaning Database 🧹"
Life.destroy_all
User.destroy_all
Booking.destroy_all

Category.create(name: "Science")
Category.create(name: "Religion")
Category.create(name: "Actor")

puts "Creating Database 🗂️"

puts "Creating Users 🗂️"

user_jesus = User.new do |u|
  u.name = "Jesus"
  u.email = "jesus@gmail.com"
  u.password = "123456"
end
user_jesus.save

user_harry_potter = User.new do |u|
  u.name = "Harry Potter"
  u.email = "harry@gmail.com"
  u.password = "123456"
end
user_harry_potter.save

user_elon_musk = User.new do |u|
  u.name = "Elon Musk"
  u.email = "elon@gmail.com"
  u.password = "123456"
end
user_elon_musk.save

user_beyonce = User.new do |u|
  u.name = "Beyoncé"
  u.email = "beyonce@gmail.com"
  u.password = "123456"
end
user_beyonce.save

user_stephen_hawking = User.new do |u|
  u.name = "Stephen Hawking"
  u.email = "stephen@gmail.com"
  u.password = "123456"
end
user_stephen_hawking.save

user_michelle_obama = User.new do |u|
  u.name = "Michelle Obama"
  u.email = "michelle@gmail.com"
  u.password = "123456"
end
user_michelle_obama.save

user_serena_williams = User.new do |u|
  u.name = "Serena Williams"
  u.email = "serena@gmail.com"
  u.password = "123456"
end
user_serena_williams.save

user_van_gogh = User.new do |u|
  u.name = "Van Gogh"
  u.email = "vangogh@gmail.com"
  u.password = "123456"
end
user_van_gogh.save

user_emily_henry = User.new do |u|
  u.name = "Emily Henry"
  u.email = "emily@gmail.com"
  u.password = "123456"
end
user_emily_henry.save

user_agatha_christie = User.new do |u|
  u.name = "Agatha Christie"
  u.email = "agatha@gmail.com"
  u.password = "123456"
end
user_agatha_christie.save

user_jamie_oliver = User.new do |u|
  u.name = "Jamie Oliver"
  u.email = "jamie@gmail.com"
  u.password = "123456"
end
user_jamie_oliver.save

user_hasan_minhaj = User.new do |u|
  u.name = "Hasan Minhaj"
  u.email = "hasan@gmail.com"
  u.password = "123456"
end
user_hasan_minhaj.save

puts "Creating Lives 🗂️"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# for i in 0...array_of_links.length
#   life = Life.new(
#     address: array_of_addresses[i],
#     name:
#   )
#   life.photo.attach(io: array_of_links[i], filename: "nes.png", content_type: "image/png")
#   life.save
# end

addresses = ["Stationsplein, 1012 Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy",
             "Pariser Platz, 10117 Berlin, Germany", "Normannenstraße 20, 10365 Berlin",
             "Friedrichstraße 43, 10117 Berlin, Germany",
             "Rudi-Dutschke-Straße 26, 10969 Berlin",
             "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris",
             "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, Dublin 1, D01 F5P2, Ireland"]

photos = [
  {
    filePath: "https://res.cloudinary.com/djdancb8p/image/upload/v1683831203/development/ivrhnt77u3ew7jypv2gcsk6rbnda.jpg",
    name: "jesusImg.jpg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "harrypotterImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "elonmuskImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "beyonce"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "stephenhawkingImk"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "michelleobamaImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "serenawilliamsImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "vangoghImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "emilyhenryImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "agathachristieImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "jamieoliverImg"
  },
  {
    filePath: "https://www.freepik.com/free-ai-image/free-photo-good-friday-background-with-jesus-christ-cross_40380634.htm#query=jesus&position=0&from_view=keyword&track=sph",
    name: "hasanminajImg"
  }
]

users = User.all
users.each_with_index do |user, i|
  life = Life.new(name: user.name, details: "", address: addresses[i])
  life.user = user
  life.save
  binding.pry
  life.photo.attach(io: photos[i][:filePath], filename: photos[i][:name], content_type: "image/jpg")
end



# for i in 0...photos.length do
#     # life_jesus = Life.new do |life|
#     life_jesus = Life.new(
#       life.address: addresses[0],
#       name: "Jesus",
#       details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#               )
#               life.photo.attach(io: photos[0], filename: "nes.png", content_type: "image/png")
#               end
#               life_jesus.user = user_jesus
#               life_jesus.save


#       life_harry_potter = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy",
#           "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Harry Potter"
#         life.details = "I am an orphan living with my abusive aunt and uncle. Last year, I discovered I am a wizard and now I study at Hogwarts School of Witchcraft and Wizardry. Come do magic like me!"
#       end
#       life_harry_potter.user = user_harry_potter
#       life_harry_potter.save

#       life_elon_musk = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Elon Musk"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_elon_musk.user = user_elon_musk
#       life_elon_musk.save

#       life_beyonce = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Beyoncé"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_beyonce.user = user_beyonce
#       life_beyonce.save

#       life_stephen_hawking = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Stephen Hawking"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_stephen_hawking.user = user_stephen_hawking
#       life_stephen_hawking.save

#       life_michelle_obama = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Michelle Obama"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_michelle_obama.user = user_michelle_obama
#       life_michelle_obama.save

#       life_serena_williams = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Serena Williams"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_serena_williams.user = user_serena_williams
#       life_serena_williams.save

#       life_van_gogh = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Van Gogh"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_van_gogh.user = user_van_gogh
#       life_van_gogh.save

#       life_emily_henry = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Emily Henry"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_emily_henry.user = user_emily_henry
#       life_emily_henry.save

#       life_agatha_christie = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Agatha Christie"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_agatha_christie.user = user_agatha_christie
#       life_agatha_christie.save

#       life_jamie_oliver = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Jamie Oliver"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_jamie_oliver.user = user_jamie_oliver
#       life_jamie_oliver.save

#       life_hasan_minhaj = Life.new do |life|
#         life.address = ["Stationsplein, 1012 AB Amsterdam, Netherlands", "Piazza del Colosseo, 1, 00184 Roma RM, Italy", "Pariser Platz, 10117 Berlin", "Normannenstraße 20, 10365 Berlin", "Friedrichstraße 43, 10117 Berlin", "Rudi-Dutschke-Straße 26, 10969 Berlin", "Pl. Charles de Gaulle, 75008 Paris", "Champ de Mars, 5 Av. Anatole France, 75007 Paris", "London SW1A 0AA, United Kingdom", "O'Connell Street Lower, North City, Dublin 1, D01 F5P2, Ireland" ].sample
#         life.name = "Hasan Minhaj"
#         life.details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non efficitur dui."
#       end
#       life_hasan_minhaj.user = user_hasan_minhaj
#       life_hasan_minhaj.save

puts "We have a DB ✅ with #{Life.count} lives"
