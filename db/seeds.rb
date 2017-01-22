Song.delete_all
Artist.delete_all

song1 = Song.create(title: "Peace of mind")
song2 = Song.create(title: "Another chance")
song3 = Song.create(title: "We're all we need")
song4 = Song.create(title: "Celestial")
song5 = Song.create(title: "Super Human")
song6 = Song.create(title: "Tommorow Boys")
song7 = Song.create(title: "Hey now")
song8 = Song.create(title: "Strong")
song9 = Song.create(title: "Wasting my young years")

artist1 = Artist.create(name: "Above & Beyond")
artist2 = Artist.create(name: "Andrew Bayer")
artist3 = Artist.create(name: "London Grammar")

artist1.songs << [song1]
artist1.songs << [song2]
artist1.songs << [song3]
artist1.save

artist2.songs << [song4]
artist2.songs << [song5]
artist2.songs << [song6]
artist2.save

artist3.songs << [song7]
artist3.songs << [song8]
artist3.songs << [song9]
artist3.save
