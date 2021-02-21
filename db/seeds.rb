# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



puts 'Cleaning WineMaker database...'
WineMaker.destroy_all
Bottle.destroy_all

10.times do
  wine_maker = WineMaker.create!(name: Faker::FunnyName.name, country: Faker::Address.country)

puts 'Creating bottles ...'
  20.times do
    bottle = Bottle.new(
      name: Faker::Beer.name,
      year: rand(1998..2020),
      grapes: Faker::Food.fruits,
      description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    )
    bottle.wine_maker_id = wine_maker.id
    bottle.save!
  end
end

puts "..created #{Bottle.count} bottles..."
puts "...Created #{WineMaker.count} restaurants"
