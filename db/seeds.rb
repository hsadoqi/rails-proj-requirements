# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Restaurant.destroy_all
Review.destroy_all

20.times do 
    User.create(name: Faker::Name.name )
end 

20.times do 
    Restaurant.create(name: Faker::Restaurant.name )
end 

100.times do 
    Review.create(rating: rand(1..10), content: Faker::Hipster.paragraph, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
end 
