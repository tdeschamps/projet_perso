# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  10.times do
    %w(f m p s).each do |suffix|
      name = Faker::Name.name
      content = "ton/ta reu#{suffix} à #{name}, il/elle boit de le kro!"
      Dirt.create(name: Faker::Name.name, content: content, date: Time.now)
  end
end