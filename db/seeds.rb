# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning Database"

# Restaurant.destroy_all

# puts "creating new restaurants...populating database"

# 5.times do
#   restaurant = Restaurant.new(name: Faker::Commerce.vendor,
#     address: Faker::Address.street_address,
#     category: category.sample)
#     restaurant.save!
# puts "This restaurant has an id of #{restaurant.id}"
# end

# puts "Seed complete"

number = [0, 1, 2, 3, 4, 5]

puts "Cleaning database"

Movie.destroy_all

puts "Creating new database"

10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: "lorem ipsum",
    rating: number.sample
  )
  movie.save!
  puts "This movie has an id of #{movie.id}"
end

puts "Database populated successfully"
