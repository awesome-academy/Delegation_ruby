# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times.each do
  User.create name: Faker::Name.name, email: Faker::Internet.email, gender: Faker::Gender.binary_type
end


20.times.each do
  Post.create title: Faker::Lorem.words(rand(2..10)), content: Faker::Lorem.paragraphs(rand(2..8)), user_id: User.all.pluck(:id).sample
end
