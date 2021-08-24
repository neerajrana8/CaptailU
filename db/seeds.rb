# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(email: 'neeraj@gmail.com', password: "neeraj123")
user.save

Tournament.new(name: 'Hockey Championship', city: "Dehradun", state: "Uttarakhand", start_date: "12-11.2021")