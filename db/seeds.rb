
require 'faker'

10.times do
  city_random = City.create!(city_name: Faker::Address.city )
end

10.times do
  dogsitter_random = Dogsitter.create!(name: Faker::Name.first_name , city_id: rand(1..City.count) )
end

10.times do
  dog_random = Dog.create!(name: Faker::Pokemon.name, city_id: rand(1..City.count))
end


10.times do
  stroll_random = Stroll.create!(name: "Promenade" , dog_id: rand(1..Dog.count), dogsitter_id: rand(1..Dogsitter.count), city_id: rand(1..City.count))
end

puts "Cities ,Dogs ,Dogsitters and Strolls : GENERATED"
