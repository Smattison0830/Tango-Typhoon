# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying seeds"

Word.destroy_all
User.destroy_all

puts "building seeds"

spencer = User.create!(
  email: "Spencer@cool.com",
  password: "123456",
)

# List.create!(
#     name: "Fruit",
#     user_id: 2
# )

Word.create!(
    english: "Apple",
    japanese: "りんご",
    picture: "",
    description: ""
)

Word.create!(
    english: "Orange",
    japanese: "オレンジ",
    picture: "",
    description: ""
)

Word.create!(
    english: "Banana",
    japanese: "バナナ",
    picture: "",
    description: ""
)

Word.create!(
    english: "Kiwi Fruit",
    japanese: "キウイ",
    picture: "",
    description: ""
)

Word.create!(
    english: "Strawberry",
    japanese: "いちご",
    picture: "",
)

Word.create!(
    english: "Peach",
    japanese: "もも",
    picture: "",
    description: ""
)

Word.create!(
    english: "Lemon",
    japanese: "レモン",
    picture: "",
    description: ""
)

Word.create!(
    english: "Watermelon",
    japanese: "すいか",
    picture: "",
    description: ""
)

puts "seeds created"