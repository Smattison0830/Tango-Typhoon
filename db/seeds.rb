# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying seeds"

Vocab.destroy_all
User.destroy_all

puts "building seeds"

spencer = User.create!(
  email: "Spencer@cool.com",
  password: "123456",
)

VocabList.create!(
   name: "fruit",
   user_id: 0
)

Vocab.create!(
    english: "Apple",
    japanese: "りんご",
    picture: "",
    description: ""
)

Vocab.create!(
    english: "Orange",
    japanese: "オレンジ",
    picture: "",
    description: ""
)

Vocab.create!(
    english: "Banana",
    japanese: "バナナ",
    picture: "",
    description: ""
)

Vocab.create!(
    english: "Kiwi Fruit",
    japanese: "キウイ",
    picture: "",
    description: ""
)

Vocab.create!(
    english: "Strawberry",
    japanese: "いちご",
    picture: "",
)

Vocab.create!(
    english: "Peach",
    japanese: "もも",
    picture: "",
    description: ""
)

Vocab.create!(
    english: "Lemon",
    japanese: "レモン",
    picture: "",
    description: ""
)

Vocab.create!(
    english: "Watermelon",
    japanese: "すいか",
    picture: "",
    description: ""
)

puts "seeds created"