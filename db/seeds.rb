# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
5.times do
  restau = Restaurant.new(
    name: 'Restaurant_test',
    address: 'Chemin du test 43',
    phone_number: '022 432 13 45',
    category: %w[chinese italian japanese french belgian].sample
  )
  restau.save
  5.times do
    rev = Review.new(
      restaurant_id: restau.id,
      rating: (0..5).to_a.sample,
      content: 'Un restaurant comme un autre'
    )
    rev.save
  end
end
