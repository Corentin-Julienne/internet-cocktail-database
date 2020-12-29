# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Cleaning coktails and ingredients in database for seeding purposes..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Adding new ingredients for demo purposes (seeding)"

Ingredient.create(name: "Tequila")
Ingredient.create(name: "Rhum")
Ingredient.create(name: "Campari")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Boubon")


puts "Seeding new Cocktails with photos for demo purposes (seeding)"

puts "creating cocktail 1 : Mojito"

file = URI.open("https://images.unsplash.com/photo-1599021456807-25db0f974333?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=758&q=80")
cocktail = Cocktail.create(name: "Mojito")
cocktail.photo.attach(io: file, filename: 'mojito.jpeg', content_type: 'image.jpeg')
cocktail.save!

# Cocktail.create(name: "Mojito")
# Cocktail.create(name: "Cuba Libre")
# Cocktail.create(name: "Dry Martini")
# Cocktail.create(name: "Margarita")
# Cocktail.create(name: "Negroni")
# Cocktail.create(name: "Cosmopolitan")
# Cocktail.create(name: "Daiquiri")
# Cocktail.create(name: "Pina Coloda")
# Cocktail.create(name: "Gin Tonic")
# Cocktail.create(name: "Tequila Sunrise")
# Cocktail.create(name: "White Russian")
# Cocktail.create(name: "Old Fashioned")

