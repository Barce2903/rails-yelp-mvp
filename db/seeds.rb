# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian][rand(4)]
  )
  restaurant.save!
  5.times do
    review = Review.new(
      restaurant_id: restaurant.id,
      rating: rand(5),
      content: Faker::Restaurant.review
    )
    review.save!
  end
end
