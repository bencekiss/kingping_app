# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create(
  nickname: "Dgibbins",
  name: "Ryan Anderson",
  wins: 0,
  losses: 0,
  url: "https://bitmakerhq.s3.amazonaws.com/alexa/production/student/photo/1322/medium_Ryan_Anderson.jpg"
)

Player.create(
  nickname: "bkiss",
  name: "Bence Kiss",
  wins: 0,
  losses: 0,
  url: "https://bitmakerhq.s3.amazonaws.com/alexa/production/student/photo/1328/medium_Bence_Kiss.jpg"
)

Game.create(
  gamedate: Time.now,
  player1_id: 1,
  player2_id: 2,
  p1points: 9,
  p2points: 11
)

GamePlayer.create(
  game_id: 1,
  player_id: 1
)
GamePlayer.create(
  game_id: 1,
  player_id: 2
)
