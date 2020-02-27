# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "seed@seed.seed", password: "password", password_confirmation: "password")

candies_attributes = [
  {
    name:         'Pushito',
    composition:  'Small candies, 3 flavors : soda (blue), grape (pink) and cola (yellow).',
    price:        6,
    address: 'Boulevard Anspach 89 1000 Brussels',
    availability: 5,
    user: user
  },
  {
    name:         'Monster Stamp',
    composition:  'Ramune type candy. They can be used as fun stamps and change the color of your tongue when you eat them!.',
    price:        10,
    address: 'Rue Saint-Pierre 59, 1000 Bruxelles',
    availability: 5,
    user: user
  },
  {
    name:         'Dagashi',
    composition:  '8 random dagashi sweet and savory.',
    price:        8,
    address: 'RChaussée de Mons 125, 1070 Anderlecht',
    availability: 5,
    user: user
  },
  {
    name:         'Yooyyoy',
    composition:  'Box of sweet Kdy.',
    price:        8,
    address: 'Avenue Georges Henri 316, 1200 Woluwe-Saint-Lambert',
    availability: 5,
    user: user
  }
]
Candy.create!(candies_attributes)
