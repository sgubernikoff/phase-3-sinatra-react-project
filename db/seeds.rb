puts "Deleting old data..."
Concert.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(username: "billyboy69", age: 69, gender: "Male")
user2 = User.create(username: "whydmywifeleave", age: 12, gender: "Female")
user3 = User.create(username: "oldDOG", age: 93, gender: "Male")
user4 = User.create(username: "brislord13", age: 45, gender: "Male")
user5 = User.create(username: "musicEnjoyer5", age: 36, gender: "Female")
user6 = User.create(username: "tedbundyfan00", age: 8, gender: "Male")
user7 = User.create(username: "crust!", age: 55, gender: "Male")
user8 = User.create(username: "Ted Cruz", age: 21, gender: "Female")

puts "Creating concerts..."
concert1 = Concert.create(artist: "John Mayer", date: "12/3/2017", genre: "Alt Rock", venue: "MSG", gif: "https://img.msg.com/wp-content/uploads/2021/02/BillyJoel_071818_1902_RT-1.jpg")
concert2 = Concert.create(artist: "Don Toliver",  date: "1/3/2021", genre: "Hip Hop", venue: "United Center", gif: "https://cms.nhl.bamgrid.com/images/photos/330397226/1024x576/cut.png")
concert3 = Concert.create(artist: "Jimi Hendrix", date: "3/10/1973", genre: "Rock & Roll", venue: "Woodstock", gif: "https://cdn.vox-cdn.com/thumbor/6o-y1Z27rOe9fuuEfZsH3lhVDpg=/1400x788/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/18263849/woodstock_99_getty_images.jpg")
concert4 = Concert.create(artist: "Insane Clown Posse", date: "3/11/22", genre: "Gospel", venue: "Joe's Crab Shack", gif: "https://images.getbento.com/accounts/edf5b1bb2b8913719a3af84304d86c2e/media/images/713111E4A0072.jpg?w=1200&fit=crop&auto=compress,format&h=600")
concert5 = Concert.create(artist: "Usher", date: "9/3/2003", genre: "USH", venue: "Bass Pro Shops", gif: "https://cdn.vox-cdn.com/thumbor/-X9qGufVDNTcVa4SmkKPzFqQicY=/1400x788/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19870540/615197456.jpg.jpg")
concert6 = Concert.create(artist: "John Cena", date: "7/23/2010", genre: "Rock", venue: "Playstation Theatre", gif: "https://www.aegworldwide.com/sites/default/files/styles/medium/public/real-estate/2017-09/PST2.jpg?itok=WHPjuhK5")
concert7 = Concert.create(artist: "Future", date: "8/10/2021", genre: "Hip Hop", venue: "Mercedes-Benz Stadium", gif: "https://i0.wp.com/files.tripstodiscover.com/files/2018/08/37008849_1777355165691876_6099118937759285248_o.jpg?resize=784%2C588")
concert8 = Concert.create(artist: "Willy Blanco", date: "4/1/2022", genre: "Spunk", venue: "Flatiron School", gif: "https://i.insider.com/5f1ef5bbf0f41912f83e570d?width=1136&format=jpeg")

puts "Creating reviews..."

Review.create(concert_id: concert1.id, user_id: user1.id, comment: "This was my first John Mayer concert. It was seriously a monsoon in there.", concert_rating: 4);
Review.create(concert_id: concert1.id, user_id: user2.id, comment: "Thought of my ex here. Didn't enjoy that - i miss her.", concert_rating: 2);
Review.create(concert_id: concert2.id, user_id: user2.id, comment: "Minor slapper. Better on features.", concert_rating: 2);
Review.create(concert_id: concert3.id, user_id: user3.id, comment: "Found this tab in the porta-potty. The acid was absolutely ripping. I saw my great grandfather.. I swear.", concert_rating: 5);
Review.create(concert_id: concert4.id, user_id: user4.id, comment: "ICP was redefining the juggalo game. Joe ran out of crab legs.", concert_rating: 3);
Review.create(concert_id: concert5.id, user_id: user5.id, comment: "Got a bunch of fishing gear. Didn't catch the show, sadly. ", concert_rating: 4);
Review.create(concert_id: concert6.id, user_id: user6.id, comment: "I couldn't see anything.", concert_rating: 1);
Review.create(concert_id: concert7.id, user_id: user7.id, comment: "Leanfest.", concert_rating: 3);
Review.create(concert_id: concert8.id, user_id: user8.id, comment: "Willy B has never missed. You can't miss this concert", concert_rating: 5);


puts "Seeding done!"
