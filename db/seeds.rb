# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

100.times do
  Movie.create!([
    { name: Faker::Movie.title }
  ])
end

10.times do
  Client.create!([
    { name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 100) }
  ])
end
