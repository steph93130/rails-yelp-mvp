# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."

Review.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create!(
  name: "Sakura Sushi",
  address: "12 rue de Tokyo, Paris",
  phone_number: "01 42 56 78 90",
  category: "japanese"
)

Restaurant.create!(
  name: "La Piazza",
  address: "8 avenue d'Italie, Paris",
  phone_number: "01 45 67 89 10",
  category: "italian"
)

Restaurant.create!(
  name: "Le Petit Bistrot",
  address: "15 rue de Rivoli, Paris",
  phone_number: "01 40 20 30 40",
  category: "french"
)

Restaurant.create!(
  name: "Dragon d'Or",
  address: "22 boulevard Voltaire, Paris",
  phone_number: "01 48 98 76 54",
  category: "chinese"
)

Restaurant.create!(
  name: "Chez Bruxelles",
  address: "5 place de Belgique, Lille",
  phone_number: "03 20 11 22 33",
  category: "belgian"
)

puts "Finished!"
