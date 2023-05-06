# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning Database 🧹"
Life.destroy_all
User.destroy_all

puts "Creating Database 🗂️"

puts "Creating Users 🗂️"

user_harry_potter = User.new do |u|
  u.name = "Harry"
  u.email = "harryp@gmail.com"
  u.password = "123456"
end
user_harry_potter.save

puts "Creating Lives 🗂️"
life_harry_potter = Life.new do |life|
  life.name = "Harry Potter"
  life.details = "I am an orphan living with my abusive aunt and uncle. Last year, I discovered I am a wizard and now I study at Hogwarts School of Witchcraft and Wizardry. Come do magic like me!"
end
life_harry_potter.user = user_harry_potter
life_harry_potter.save

puts "We have a DB ✅ with #{Life.count} lives"
