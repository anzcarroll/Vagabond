# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
City.destroy_all

atlanta = City.new(name: "Atlanta", photo: "ATLvagabondEdit.jpg")


atlanta.posts = [
  Post.new(title: "Atlanta is awesome!", description: "I had a blast at the aquarium, so much to do", user_id: 1),
  Post.new(title: "Don't like ATL...", description: "Had a dangerous vibe my entire trip. Not as bad as Savannah though", user_id: 1)
]

london = City.new(name: "London", photo: "LondonVagabond.jpg")

london.posts = [
  Post.new(title: "London is rainy!", description: "It was lovely and the people are beautiful!", user_id: 1),
  Post.new(title: "Can I move there?", description: "I can't stand the US, I wish they had dual citizenship!", user_id: 1)
]

atlanta.save
london.save