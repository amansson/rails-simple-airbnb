require 'faker'

puts "Cleaning house.."
Flat.destroy_all

puts "Creating new flats..."

10.times do 
  Flat.create!(
    name: Faker::Coffee.notes,
    address: Faker::Coffee.origin,
    description: Faker::ChuckNorris.fact,
    price_per_night: rand(29..99),
    number_of_guests: rand(1..5)
  )
end

puts "All flats created!"