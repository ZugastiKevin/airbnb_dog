# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all



5.times do
  city = City.create(city_name: Faker::Address.city)
end



5.times do
  Dogsitter.create(
    city_id: City.all.sample.id ,
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name
  )
end



37.times do
  Dog.create(
    city_id: City.all.sample.id ,
    dog_name: Faker::Creature::Dog.name
  )
end



37.times do 
  Stroll.create(
    dogsitter_id: Dogsitter.all.sample.id ,
    dog_id: Dog.all.sample.id ,
    date: Faker::Time.forward(days: 37,  period: :day)
  )
end



puts "tas tous cree OK"