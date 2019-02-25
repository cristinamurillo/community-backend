# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Opportunity.destroy_all
Organization.destroy_all

20.times do
    Organization.create(
        name: Faker::Hipster.word,
        description: Faker::Hipster.paragraph,
        icon_url: Faker::LoremFlickr.image("50x60")
    )
end

20.times do
    Opportunity.create(
        title: Faker::Hipster.sentence(3),
        description: Faker::Lorem.paragraph,
        img_url: Faker::LoremFlickr.image,
        location: "#{Faker::Address.latitude}, #{Faker::Address.longitude}",
        paid: Faker::Boolean.boolean,
        organization_id: Faker::Number.between(1, 20) 
    )
end

puts "seeded"
