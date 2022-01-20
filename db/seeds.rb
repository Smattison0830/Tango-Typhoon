# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying seeds"

Word.destroy_all
List.destroy_all
User.destroy_all

puts "building seeds"

spencer = User.create!(
  email: "Spencer@cool.com",
  password: "123456",
)

# puts spencer[:email]

fruit = List.create!(
    name: "FRUITS"
)

# List.first.words.create!(    
#     english: "Apple",
#     japanese: "りんご",
#     picture: "",
#     description: ""
# )

# puts fruit_list

# Word.create!(
#     english: "Apple",
#     japanese: "りんご",
#     picture: "",
#     description: ""
# )

# Word.create!(
#     english: "Orange",
#     japanese: "オレンジ",
#     picture: "",
#     description: ""
# )

# Word.create!(
#     english: "Banana",
#     japanese: "バナナ",
#     picture: "",
#     description: ""
# )

# Word.create!(
#     english: "Kiwi Fruit",
#     japanese: "キウイ",
#     picture: "",
#     description: ""
# )

# Word.create!(
#     english: "Strawberry",
#     japanese: "いちご",
#     picture: "",
#     description: ""
# )

# Word.create!(
    # english: "Peach",
    # japanese: "もも",
    # picture: "",
    # description: ""
# )

# Word.create!(
#     english: "Lemon",
#     japanese: "レモン",
#     picture: "",
#     description: ""
# )

# Word.create!(
#     english: "Watermelon",
#     japanese: "すいか",
#     picture: "",
#     description: ""
# )

fruits = [
    {
        english: "Apple",
        japanese: "りんご",
        picture: "",
        description: ""
    },
    {
        english: "Orange",
        japanese: "オレンジ",
        picture: "",
        description: ""
    },
    {
        english: "Banana",
        japanese: "バナナ",
        picture: "",
        description: ""
    },
    {
        english: "Kiwi Fruit",
        japanese: "キウイ",
        picture: "",
        description: ""
    },
    {
        english: "Strawberry",
        japanese: "いちご",
        picture: "",
        description: ""
    },
    {
        english: "Lemon",
        japanese: "レモン",
        picture: "",
        description: ""
    },
    {
        english: "Peach",
        japanese: "もも",
        picture: "",
        description: ""
    },
    {
        english: "Watermelon",
        japanese: "すいか",
        picture: "",
        description: ""
    }
]

fruits.each do |fruit|
    List.first.words.create!( 
         list_id: 1,
         english: fruit[:english],
         japanese: fruit[:japanese],
         description: fruit[:description],
         picture: fruit[:picture],
         score: nil
    )
end    


puts "Created #{User.all.count} users."
puts "Created #{List.all.count} lists."
puts "Created #{Word.all.count} words."
