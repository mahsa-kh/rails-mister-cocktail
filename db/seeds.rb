require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# INGREDIENTS DATA....
# puts "Cleaning database..."
# Ingredient.destroy_all



# response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
# ingreds = JSON.parse(response.read)

# ingreds["drinks"].each do |i|
#     Ingredient.create(name: i["strIngredient1"])
# end



20.times do
  ingredient = Ingredient.create(name: Faker::Food.ingredient)
  cocktail = Cocktail.create(name: Faker::Dessert.flavor)


  rand(1..6).times do |i|
    dose = Dose.create(description: Faker::Food.measurement, cocktail_id: cocktail.id.to_i, ingredient_id: ingredient.id.to_i)
  end

end
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# puts Ingredient.all


# # COCKTAILS DATA....
# Cocktail.create(name: "Mojito")
# Cocktail.create(name: "Bloody Mary")
# Cocktail.create(name: "Sex on the Beach")
# Cocktail.create(name: "Margarita")
# Cocktail.create(name: "Pina Colada")
# puts Cocktail.all


# # DOSES DATA....
Dose.create(description: "6 leaves", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "1.5 oz", cocktail_id: 1, ingredient_id: 3)
Dose.create(description: "4.5 cl", cocktail_id: 2, ingredient_id: 2)
Dose.create(description: "9 cl", cocktail_id: 2, ingredient_id: 6)
Dose.create(description: "1.33 oz", cocktail_id: 3, ingredient_id: 2)
Dose.create(description: "1.33 oz", cocktail_id: 3, ingredient_id: 5)
Dose.create(description: "2 cl", cocktail_id: 4, ingredient_id: 4)
# puts Dose.all

