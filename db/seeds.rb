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
Restaurant.destroy_all

puts "Creating restaurants..."
bonsoir_clara = {name: "Bonsoir Clara", address: "Rue Antoine Dansaert 22, 1000 Brussels", phone_number: "02 502 09 90", category: "belgian"}
sanzaru = {name: "Sanzaru", address: "Av. de Tervueren 292, 1150 Woluwe-Saint-Pierre", phone_number: "02 773 00 80", category: "japanese"}
byblos = {name: "Byblos", address: "Waversteenweg 1735, 1160 Oudergem", phone_number: "02 660 89 42", category: "italian"}
psylophone = {name: "Le Psylophone", address: "Rue de l'Hospice Communal 90, 1170 Watermael-Boitsfort", phone_number: "02 672 32 48", category: "french"}
plaka = {name: "La Plaka", address: "Rue Middelbourg 30/32, 1170 Watermael-Boitsfort", phone_number: "02 673 16 78", category: "chinese"}

[bonsoir_clara, sanzaru, byblos, psylophone, plaka].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
