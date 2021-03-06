# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create the user Jon Snow
User.find_or_create_by(email: 'jon@medcapital.com') do |u|
    u.name = 'Jon Snow'
    u.password = '123456'
end

#Create the user Jaime Lannister
User.find_or_create_by(email: 'jaime@medcapital.com') do |u|
    u.name = 'Jaime Lannister'
    u.password = '123456'
end