# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@tournament1 = Tournament.new(name: 'Dehradun State Championship', city: "Dehradun", state: "Uttarakhand", start_date: "12-11.2021")
@tournament1.save


coach = Coach.new(email: 'neeraj@gmail.com', password: "neeraj123")
coach.save


team1 = Team.new(name: "Army Badminton", age_group: "10-15", coach: "Devendra Singh", tournament: @tournament1)
team2 = Team.new(name: "KV Badminto", age_group: "10-16", coach: "Markus Singh", tournament: @tournament1)
team3 = Team.new(name: "Garhwal Tennis", age_group: "10-15", coach: "Neeraj Singh", tournament: @tournament1)

team1.save
team2.save
team3.save

player1 = Player.new( email:'jhon@.com',  team: team1, first_name: "Jhon", last_name: 'Doe', height: 168, weight: 87, birthday: "12-12-1922", graduation_year: 2018, position: 'Defender', recruit: false, password: "dalnqejd")
player2 = Player.new( email:'michel.com', team: team2, first_name: "Michel", last_name: 'Doe', height: 168, weight: 87, birthday: "12-12-1922", graduation_year: 2018, position: 'Defender', recruit: false, password: "dalnqejd" )
player3 = Player.new( email:'sunny.com', team: team3, first_name: "Sunny", last_name: 'Doe', height: 168, weight: 87, birthday: "12-12-1922", graduation_year: 2018, position: 'Defender', recruit: false, password: "dalnqejd" )
player4 = Player.new( email:'shaurya.com', team: team1, first_name: "Shaurya", last_name: 'Doe', height: 168, weight: 87, birthday: "12-12-1922", graduation_year: 2018, position: 'Service', recruit: false, password: "dalnqejd" )
player5 = Player.new( email:'jagjot.com', team: team2, first_name: "Jagjot", last_name: 'Doe', height: 168, weight: 87, birthday: "12-12-1922", graduation_year: 2018, position: 'Service', recruit: false, password: "dalnqejd" )
player6 = Player.new( email:'hasan.com', team: team3, first_name: "Hasan", last_name: 'Doe', height: 168, weight: 87, birthday: "12-12-1922", graduation_year: 2018, position: 'Service', recruit: false, password: "dalnqejd" )

player1.save
player2.save
player3.save
player4.save
player5.save
player6.save

event1  = Event.new(name: 'Badminton Competition', tournament: @tournament1)
event2  = Event.new(name: 'Tennis Competition', tournament: @tournament1)
event1.save
event2.save