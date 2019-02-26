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
        icon_url: 'https://pbs.twimg.com/profile_images/971478895005503488/I7ekAuBd_400x400.jpg'
        )
    end
    
latitude = 40.730610 
longitude= -73.95242 

10.times do
    longitude-=rand()*0.05

    Opportunity.create(
        title: Faker::Hipster.sentence(3),
        description: Faker::Lorem.paragraph,
        img_url: Faker::LoremFlickr.image,
        location: "#{latitude}, #{longitude}",
        paid: Faker::Boolean.boolean,
        organization_id: Faker::Number.between(1, 20) 
    )
    latitude+=rand()*0.02
    longitude= -73.95242 

end

latitude = 40.730610 


10.times do
    longitude+=rand()*0.05

    Opportunity.create(
        title: Faker::Hipster.sentence(3),
        description: Faker::Lorem.paragraph,
        img_url: Faker::LoremFlickr.image,
        location: "#{latitude}, #{longitude}",
        paid: Faker::Boolean.boolean,
        organization_id: Faker::Number.between(1, 20) 
    )
    latitude-=rand()*0.02
    longitude= -73.95242 
end

puts "seeded"
