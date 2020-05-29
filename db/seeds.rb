# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.destroy_all
Artist.destroy_all
Song.destroy_all


g1 = Genre.create(name: "Genre 1")
g2 = Genre.create(name: "Genre 2")
g3 = Genre.create(name: "Genre 3")

a1 = Artist.create(name: "Artist 1", bio: "bio1")
a2 = Artist.create(name: "Artist 2", bio: "bio2")
a3 = Artist.create(name: "Artist 3", bio: "bio3")
a4 = Artist.create(name: "Artist 4", bio: "bio4")
a5 = Artist.create(name: "Artist 5", bio: "bio5")
a6 = Artist.create(name: "Artist 6", bio: "bio6")

Song.create(name: "Song 1",  artist_id: a1, genre: g1)
Song.create(name: "Song 2",  artist_id: a1, genre: g1)
Song.create(name: "Song 3",  artist_id: a2, genre: g1)
Song.create(name: "Song 4",  artist_id: a2, genre: g1)
Song.create(name: "Song 5",  artist_id: a3, genre: g2)
Song.create(name: "Song 6",  artist_id: a3, genre: g2)
Song.create(name: "Song 7",  artist_id: a4, genre: g2)
Song.create(name: "Song 8",  artist_id: a4, genre: g2)
Song.create(name: "Song 9",  artist_id: a5, genre: g3)
Song.create(name: "Song 10", artist_id: a5, genre: g3)
Song.create(name: "Song 11", artist_id: a6, genre: g3)
Song.create(name: "Song 12", artist_id: a6, genre: g3)
