# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Madonna", bio: "Queen of Pop")
a2 = Artist.create(name: "Britney Spears", bio: "Princess of Pop")

g1 = Genre.create(name: "Pop")

Song.create(name: "Like a Virgin", artist_id: a1.id, genre_id: g1) 
Song.create(name: "Oops...I did it again!", artist_id: a2.id, genre_id: g1) 
