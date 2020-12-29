# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning coktails and ingredients in database for seeding purposes..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Adding new ingredients for demo purposes (seeding)"

Ingredient.create(name: "Tequila")
Ingredient.create(name: "Rhum")
Ingredient.create(name: "Campari")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Boubon")


puts "Seeding new Cocktails for demo purposes (seeding)"

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Cuba Libre")
Cocktail.create(name: "Dry Martini")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Negroni")
Cocktail.create(name: "Cosmopolitan")
Cocktail.create(name: "Daiquiri")
Cocktail.create(name: "Pina Coloda")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Tequila Sunrise")
Cocktail.create(name: "White Russian")
Cocktail.create(name: "Old Fashioned")

