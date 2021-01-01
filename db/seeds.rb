# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destoy all DB"
Pet.destroy_all
puts "create DB"

15.times do
    pet = Pet.create({
        name: Faker::FunnyName.name,
        address: Faker::Address.street_name,
        spacies: %w[dog cat ferret parrot snake].sample,
        found_on: Faker::Date.between(from: 2.days.ago, to: Date.today)
    })
    puts "pet #{pet.id} is created"

end
