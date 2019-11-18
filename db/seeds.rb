# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
julie = User.create!(email:"patujulie@gmail.com", password: "julie", username: "patujulie")
martin = User.create!(email:"hoetmartin@gmail.com", password: "martin", username: "hoetmartin")
louis = User.create!(email:"mggtlouism@gmail.com", password: "louis", username: "louismggt")
pierre = User.create!(email:"ledankpierre@gmail.com", password: "pierre", username: "ledank")
martind = User.create!(email:"martinderr@gmail.com", password: "martin", username: "martinderr")
antoine = User.create!(email:"toniomass@gmail.com", password: "antoine", username: "toniomass")
mika = User.create!(email:"mikadu62@gmail.com", password: "mika", username: "mikadu62")
remi = User.create!(email:"remsansfa@gmail.com", password: "remi", username: "remisansfafa")
olivier = User.create!(email:"olivmat@gmail.com", password: "olivier", username: "lifiertakclabatri")
valentin = User.create!(email:"vavalemaire@gmail.com", password: "valentin", username: "valleroux")

nain_de_merde = Statue.create!(user: julie , category: "petite sculpture", surface: 15, description:  "entrée de gamme", price: 5)
lalique = Statue.create!(user: martin, category: "petite sculpture", surface: 40, description:  "haut de gamme ", price: 45)
aphrodite = Statue.create!(user: louis, category: "petite sculpture", surface: 50, description:  "milieu de gamme ", price: 20)
visage_grec = Statue.create!(user: pierre, category: "moyenne sculpture", surface: 70, description:  "entrée de gamme ", price: 10)
le_cavalier = Statue.create!(user: martind, category: "moyenne sculpture", surface: 77, description:  "milieu de gamme ", price: 40)
leclair = Statue.create!(user: antoine, category: "moyenne sculpture", surface: 90, description:  "entrée de gamme ", price:  25)
zig_zag = Statue.create!(user: mika, category: "moyenne sculpture", surface: 100, description: "haut de gamme ", price: 100)
amazone = Statue.create!(user: remi, category: "grande sculpture", surface: 150, description: "milieu de gamme ", price: 90)
sculpture_de_julie = Statue.create!(user: olivier, category: "grande sculpture", surface: 164, description: "entrée de gamme ", price: 1)
tour_eiffel = Statue.create!(user: valentin, category: "grande sculpture", surface: 250 , description: "haut de gamme ", price: 200)
