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
savory_bites_grill = {name: "Savory Bites Grill", address: "123 Main St, City ABC", phone_number: "+1234567890", category: "italian"}
urban_spice_fusion = {name: "Urban Spice Fusion", address: "456 Oak St, City XYZ", phone_number: "+9876543210", category: "japanese"}
blue_mesa_cantina = {name: "Blue Mesa Cantina", address: "789 Pine St, City PQR", phone_number: "+1122334455", category: "italian"}
fireside_flavors_bistro = {name: "Fireside Flavors Bistro", address: "321 Elm St, City LMN", phone_number: "+9988776655", category: "french"}
coastal_harvest_cafe = {name: "Coastal Harvest Cafe", address: "567 Cedar St, City JKL", phone_number: "+5544332211", category: "belgian"}

[savory_bites_grill, urban_spice_fusion, blue_mesa_cantina, fireside_flavors_bistro, coastal_harvest_cafe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
