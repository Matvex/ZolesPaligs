# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ id: 1, email: "em7575@gmail.com", created_at: "2021-10-14 19:29:13", updated_at: "2021-10-24 18:09:41"}])
games = Game.create([ id: 1,
  user_id: users[0].id,
  player0_name: "Elvis",
  player1_name: "Ozols",
  player2_name: "Vērdiņš",
  player3_name: "Koliņš",
  four_players: true,
  pules: true,
  created_at: "2021-10-14 20:35:46",
  updated_at: "2021-10-14 20:35:46"])

puts "Success: Theme data loaded"