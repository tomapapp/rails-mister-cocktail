# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

data = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
json = JSON.parse(data)['drinks']
json.each do |e|
  Ingredient.create(name: e['strIngredient1'].to_s)
end
