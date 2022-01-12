# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vocab.destroy_all
User.destroy_all

spencer = User.create!(
  name: "Spencer",
  email: "spencer@me.org",
  password: "spencerlife",
  line_id: "supenchan"
)

Vocab.create!(
    english: "Apple"
    japanese: "りんご"
    picture: ""
)

Vocab.create!(
    english: "Orange"
    japanese: "オレンジ"
    picture: ""
)

Vocab.create!(
    english: "Banana"
    japanese: "バナナ"
    picture: ""
)

Vocab.create!(
    english: "Kiwi Fruit"
    japanese: "キウイ"
    picture: ""
)

Vocab.create!(
    english: "Strawberry"
    japanese: "いちご"
    picture: ""
)

Vocab.create!(
    english: "Peach"
    japanese: "もも"
    picture: ""
)

Vocab.create!(
    english: "Lemon"
    japanese: "レモン"
    picture: ""
)

Vocab.create!(
    english: "Watermelon"
    japanese: "すいか"
    picture: ""
)