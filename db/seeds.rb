# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian", phone_number: "00098654567986" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "4567876523456"}
mcdo = { name: "McDo", address: "75017, Paris", category: "japanese", phone_number: "7583742092" }
burger_king = { name: "Burger King", address: "75018, Paris", category: "french", phone_number: "43243420" }
japanese_bbq = { name: "Chinese BBQ", address: "75015, Paris", category: "japanese", phone_number: "28937482230" }
sushi_shop = { name: "Sushi Shop", address: "75003, Paris", category: "chinese", phone_number: "420938497498" }
affable = { name: "L'Affable", address: "75002, Paris", category: "french", phone_number: "42390742934928" }

[dishoom, pizza_east, mcdo, burger_king, japanese_bbq, sushi_shop, affable].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
