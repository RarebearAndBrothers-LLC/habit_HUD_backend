# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ryan = User.create(name: "Ryan")

post1 = Journal.create(body: "body goes here ", user: ryan)
guidedMeditation1 = GuidedMeditation.create(before: 2, after: 10, insights: "I am all", user: ryan)
