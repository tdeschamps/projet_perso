# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Listing.create({title: Faker::Lorem.sentence, message: Faker::Lorem.sentence, photo: "http://www.notreloft.com/images/2011/01/chaise-eames-dsw.jpg", city:Faker::Address.city, price: rand(500)});
end