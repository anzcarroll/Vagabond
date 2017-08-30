# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all

City.create(name: "Atlanta", photo: "https://cdn.vox-cdn.com/uploads/chorus_asset/file/8100393/Atlanta_Flip_or_Flop.JPG")
