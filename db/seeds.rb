# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

candies_attributes = [
  {
    name:         'Pushito',
    composition:  'Small candies, 3 flavors : soda (blue), grape (pink) and cola (yellow).',
    price:        6
  },
  {
    name:         'Monster Stamp',
    composition:  'Ramune type candy. They can be used as fun stamps and change the color of your tongue when you eat them!.',
    price:        10
  },
  {
    name:         'Dagashi',
    composition:  '8 random dagashi sweet and savory.',
    price:        8
  }
]
Candy.create!(candies_attributes)
