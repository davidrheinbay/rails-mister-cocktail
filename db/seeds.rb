# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cocktail.destroy_all
# Dose.destroy_all
# Ingredient.destroy_all

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

Cocktail.create(name: 'Mojito')
url = 'https://www.teisseire.com/media/1425/_0022_mojito-png.png'
cocktail = Cocktail.new(title: 'Mojito')
cocktail.remote_photo_url = url
cocktail.save
Dose.create(description: '2pcs', cocktail: Cocktail.first,
            ingredient: Ingredient.first)
Dose.create(description: '2pcs', cocktail: Cocktail.first,
            ingredient: Ingredient.find_by_name('ice'))
