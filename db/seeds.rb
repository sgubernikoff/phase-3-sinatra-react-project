puts "Deleting old data..."
Concert.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(first_name: "Billy", last_name: "Crunts", age: 69, gender: "Male")
user2 = User.create(first_name: "Lisa", last_name: "Stank", age: 12, gender: "Female")
user3 = User.create(first_name: "Rodrigo", last_name: "Albequerque", age: 93, gender: "Male")

puts "Creating concerts..."
concert1 = Concert.create(artist: "Staple", date: "12/3/1994", genre: "Gospel", venue: "MSG", favorite_concert: true)
concert2 = Concert.create(artist: "Don",  date: "1/3/2020", genre: "Subway Performer", venue: "United Center", favorite_concert: false)
concert3 = Concert.create(artist: "Eminem", date: "3/10/2021", genre: "Garbage", venue: "Woodstock", favorite_concert: false)

puts "Creating reviews..."

Review.create(concert_id: concert1.id, user_id: user1.id, comment: "Aye Filler Review", concert_rating: 5);
Review.create(concert_id: concert2.id, user_id: user2.id, comment: "Random Review", concert_rating: 2);
Review.create(concert_id: concert3.id, user_id: user3.id, comment: "Reviewed", concert_rating: 1);


puts "Seeding done!"
