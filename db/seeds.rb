# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bey = Artist.create(name: "Beyonce", bio: "Queen Beeee")
sol = Artist.create(name: "Solange", bio: "An artist in her own right")

pop = Genre.create(name: "pop")
funk = Genre.create(name: "funk")

my_song = Song.create(name: "PLEASE work, a famous beyonce song", artist_id: 1, genre_id: 1)
my_song2 = Song.create(name: "a super solange song", artist_id: 2, genre_id: 2)
