# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

json_ingredients = open(url).read

ingredients = JSON.parse(json_ingredients).values.first.map { |ingredient| ingredient.values[0] }

hash = {}

ingredients.each do |ingredient|
  hash[:name] = ingredient
  Ingredient.create(hash)
end


Cocktail.create(name: 'Tequila Sunrise')
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Strawberry Mojito')
Cocktail.create(name: 'Daiquiri')
Cocktail.create(name: 'Marguerita')
Cocktail.create(name: "Pomme d'Api")
Cocktail.create(name: 'Negroni')
