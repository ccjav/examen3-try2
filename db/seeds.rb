# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do |n|
  num_days = rand(0..500)
  flight_num  = "#{rand(1000..2000)}-#{rand(0..9)}"
  date = num_days.days.from_now
  depart = num_days.days.from_now
  from = Faker::Address.city
  to = Faker::Address.city
  duration = rand(3..15)
  cost = rand(3000..20000)
  passengers = rand(3..300)
  
  Flight.create!(num_flight: flight_num,
               date: date,
               depart: depart,
               from: from,
               to: to,
               duration: duration, cost: cost, passengers: passengers)
end