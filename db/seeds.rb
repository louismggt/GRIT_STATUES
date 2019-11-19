# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## Feeding new DB
Review.destroy_all
Rental.destroy_all
Statue.destroy_all
User.destroy_all

puts "Building new database"

CATEGORIES = ["Bas relief", "Sculpture Equestre", "Buste", "Sculpture monumentale", "Sculpture antique", "Art contemporain", "Art nouveau", "Rococo", "Art baroque", "Nain de jardin", "Décoration de Noël", "Romanesque", "Sculpture sur bois", "Bronze"]
MATERIALS = ["Plastique", "Bois", "Bronze", "Acier", "Aluminium", "Papier", "Granit", "Pierre", "Marbre"]

julie = User.create!(email:"patujulie@gmail.com", password: "julieto", username: "patujulie")
martin = User.create!(email:"hoetmartin@gmail.com", password: "martin", username: "hoetmartin")
louis = User.create!(email:"mggtlouism@gmail.com", password: "louisto", username: "louismggt")
pierre = User.create!(email:"ledankpierre@gmail.com", password: "pierre", username: "ledank")
martind = User.create!(email:"martinderr@gmail.com", password: "martin", username: "martinderr")
antoine = User.create!(email:"toniomass@gmail.com", password: "antoine", username: "toniomass")
mika = User.create!(email:"mikadu62@gmail.com", password: "mikato", username: "mikadu62")
remi = User.create!(email:"remsansfa@gmail.com", password: "remito", username: "remisansfafa")
olivier = User.create!(email:"olivmat@gmail.com", password: "olivier", username: "lifiertakclabatri")
valentin = User.create!(email:"vavalemaire@gmail.com", password: "valentin", username: "valleroux")

nain_de_merde = Statue.create!(
  name: "nain_de_merde",
  user: julie ,
  category: CATEGORIES.sample,
  surface: 15,
  description:  "entrée de gamme",
  price: 5,
  material: MATERIALS.sample,
  length: 5,
  width: 10,
  height: 15
)
nain_de_merde.remote_photo_url = "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg"
nain_de_merde.save!

lalique = Statue.create!(
  name: "lalique",
  user: martin,
  category: CATEGORIES.sample,
  surface: 40,
  description:  "haut de gamme ",
  price: 45,
  material: MATERIALS.sample,
  length: 5,
  width: 10,
  height: 15
)
lalique.remote_photo_url = "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg"
lalique.save!

# aphrodite = Statue.create!(name: "aphrodite",user: louis, category: CATEGORIES.sample, surface: 50, description:  "milieu de gamme ", price: 20, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# visage_grec = Statue.create!(name: "visage_grec",user: pierre, category: CATEGORIES.sample, surface: 70, description:  "entrée de gamme ", price: 10, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# le_cavalier = Statue.create!(name: "le_cavalier",user: martind, category: CATEGORIES.sample, surface: 77, description:  "milieu de gamme ", price: 40, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# leclair = Statue.create!(name: "leclair",user: antoine, category: CATEGORIES.sample, surface: 90, description:  "entrée de gamme ", price:  25, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# zig_zag = Statue.create!(name: "zig_zag",user: mika, category: CATEGORIES.sample, surface: 100, description: "haut de gamme ", price: 100, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# amazone = Statue.create!(name: "amazone",user: remi, category: CATEGORIES.sample, surface: 150, description: "milieu de gamme ", price: 90, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# sculpture_de_julie = Statue.create!(name: "sculpture_de_julie",user: olivier, category: CATEGORIES.sample, surface: 164, description: "entrée de gamme ", price: 1, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)
# tour_eiffel = Statue.create!(name: "tour_eiffel",user: valentin, category: CATEGORIES.sample, surface: 250 , description: "haut de gamme ", price: 200, photo: "https://cdn.mycrazystuff.com/15836/nain-de-jardin-i-m-sexy-an-i-gnome-it.jpg", material: MATERIALS.sample, length: 5, width: 10, height: 15)

Review.create!(content:"Amazing product, recommend", stars: 4, user: julie, statue: nain_de_merde)
Review.create!(content:"Good product!", stars: 3, user: martin, statue: lalique)
Review.create!(content:"Sculpture of quality", stars: 3, user: louis, statue: aphrodite)
Review.create!(content:"The sculpture worked perfectly in my exhibition", stars: 4, user: pierre, statue: visage_grec)
Review.create!(content:"Thanks for this work of art at an affordable price", stars: 5, user: martind, statue: le_cavalier)
Review.create!(content:"perfect for decorating your parade ", stars: 4, user: olivier, statue: leclair)
Review.create!(content:"Recommended.", stars: 3, user: valentin, statue: zig_zag)
Review.create!(content:"Super produit, je recommande", stars: 4, user: antoine, statue: sculpture_de_julie)
Review.create!(content:"calidad de mierda", stars: 2, user: mika, statue: amazone)
Review.create!(content:"fragile sculpture", stars: 1, user: remi, statue: tour_eiffel)

Rental.create!(description: "Private party", start_date: Date.new(2019,10,18), end_date: Date.new(2019,10,20), user: antoine, statue: nain_de_merde)
Rental.create!(description: "fashion show", start_date: Date.new(2019,11,12), end_date: Date.new(2019,11,15), user: julie, statue: nain_de_merde)
Rental.create!(description: "Private party", start_date: Date.new(2019,12,22), end_date: Date.new(2019,1,1), user: martin, statue: nain_de_merde)
Rental.create!(description: "Birthday", start_date: Date.new(2020,1,4), end_date: Date.new(2020,1,5), user: louis, statue: nain_de_merde)
Rental.create!(description: "Showroom", start_date: Date.new(2020,6,10), end_date: Date.new(2020,6,12), user: martind, statue: nain_de_merde)
Rental.create!(description: "Birthday", start_date: Date.new(2020,7,17), end_date: Date.new(2020,7,19), user: mika, statue: nain_de_merde)
Rental.create!(description: "Showroom", start_date: Date.new(2020,4,10), end_date: Date.new(2020,4,30), user: remi, statue: nain_de_merde)
Rental.create!(description: "Private party", start_date: Date.new(2020,9,14), end_date: Date.new(2020,9,17), user: valentin, statue: nain_de_merde)
Rental.create!(description: "Showroom", start_date: Date.new(2020,4,23), end_date: Date.new(2020,4,26), user: pierre, statue: nain_de_merde)
Rental.create!(description: "Christmas event", start_date: Date.new(2019,12,1), end_date: Date.new(2020,1,1), user: olivier, statue: nain_de_merde)

puts "Database seeded"
