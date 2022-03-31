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
concert1 = Concert.create(artist: "Jimi Hendrix", date: "3/10/1973", genre: "Rock & Roll", venue: "Woodstock", gif: "https://lh3.googleusercontent.com/lg1du6x0YyX-uWlZTJW4vx77Y8m8VU6aEJ_eJrJoVUL--rEQiFWekUr5OhQxTXfyyLyWtjdwySMPv3zw1op4ugKdF07ODUFli4YvOJ610NQ8zXD4nZQMxw7UPi8adwY-iydW83w9GA=w600-h315-p-k")
concert2 = Concert.create(artist: "John Mayer", date: "12/3/2017", genre: "Alt Rock", venue: "MSG", gif: "https://lh3.googleusercontent.com/t79G5KTFaYXzlN76zjFmPrDc_iU543MUy6oSH1uMQcCRCA0O1uAbeZbSasV8pqiTrHEwlZNEmBp0WosXR2vZK-_yGmEeXg1AFJCn3siB-aXxIDMxNXMpP9RHUHaiWnOp-U8BmlwsQA=w600-h315-p-k")
concert3 = Concert.create(artist: "Don Toliver",  date: "1/3/2021", genre: "Hip Hop", venue: "United Center", gif: "https://lh3.googleusercontent.com/aMFMm1guXS0IIPuq6DQa-ezD0AFM_nPXo3ULQbfa5vRcZdRBx8i3PYom3psDB0xcoacMJZe5gTXa6uX1YWu5uo99VlIFuvYCsGlt4yt2zxSn8nHfQVLO6brArkpXMNqxYQHP_JHjrQ=w600-h315-p-k")
concert4 = Concert.create(artist: "Insane Clown Posse", date: "3/11/22", genre: "Gospel", venue: "Joe's Crab Shack", gif: "https://lh3.googleusercontent.com/grn-UCDbT6MEetkPIwZ-C_jRDWvLkLz8KT5pTJCuNouWvdPpZ-k4OhJBvLjNdtVm4fwlNEl81Mq17YHayB5xtxspx6klElU_oOkJ82XrJNzTtAxqbx6_qNhv_Ici2b30MCGIGHnlQQ=w600-h315-p-k")
concert5 = Concert.create(artist: "Usher", date: "9/3/2003", genre: "USH", venue: "Bass Pro Shops", gif: "https://lh3.googleusercontent.com/y8XovZbRFCfkV5QuvpJwzJLziFgr5jVya1bIjVQXcujmmTL3Mww0KlgEs2fvdXp9isqkNvGyRpUcWfxrQZ8T8GbJ6LQvMyzE1lRUZSZHOPNtjsIYsoxA4J4U701871UCXVdbK45SYw=w600-h315-p-k")
concert6 = Concert.create(artist: "John Cena", date: "7/23/2010", genre: "Rock", venue: "Playstation Theatre", gif: "https://lh3.googleusercontent.com/jqjKLlRP1ZTXuWfawupEnmX8sV6Br85yuUNHP9-ZLPrDS2cpPdZYEw_UIkkHm5kZ6DFIuAyxS-NwUgsWTn7lj9clX2hB9aM77hffQrBjcN3EDzWb5lHgS_sUkLzez8t2mKu4JthzRQ=w600-h315-p-k")
concert7 = Concert.create(artist: "Future", date: "8/10/2021", genre: "Hip Hop", venue: "Mercedes-Benz Stadium", gif: "https://lh3.googleusercontent.com/IzLj2dLAWamnKOzy8W4Yk3U7DH4sldMRT-vkuHVeXmCOitl5DYwc6sPyZKKQE6EUqjvYivpve1qUw0gHlg4aNHiwYtPy8nVPgCVSCD-mxCwGmCiaAC0P8lvqo_MPc6LRujVpwCeiqA=w600-h315-p-k")
concert8 = Concert.create(artist: "Willy Blanco", date: "4/1/2022", genre: "Spunk", venue: "Flatiron School", gif: "https://lh3.googleusercontent.com/oFUc6bp4Bx4J5U4BNIztWZp_-hklw-nxKWwD-6EiCMSEw8aHuNIELwdYKANcpL_J4RyQiAkQyONP7Bic3g95zPuFR-FSoywKrVlWqTpoYcAT29JgA_BH3cbpxsDASnrqZ58shxTjtw=w600-h315-p-k")

puts "Creating reviews..."

Review.create(concert_id: concert2.id, user_id: user3.id, comment: "This was my first John Mayer concert. It was seriously a monsoon in there.", concert_rating: 4);
Review.create(concert_id: concert2.id, user_id: user2.id, comment: "Thought of my ex here. Didn't enjoy that - i miss her.", concert_rating: 2);
Review.create(concert_id: concert3.id, user_id: user2.id, comment: "Minor slapper. Better on features.", concert_rating: 2);
Review.create(concert_id: concert1.id, user_id: user1.id, comment: "Found this tab in the porta-potty. The acid was absolutely ripping. I saw my great grandfather.. I swear.", concert_rating: 5);
Review.create(concert_id: concert4.id, user_id: user4.id, comment: "ICP was redefining the juggalo game. Joe ran out of crab legs.", concert_rating: 3);
Review.create(concert_id: concert5.id, user_id: user5.id, comment: "Got a bunch of fishing gear. Didn't catch the show, sadly. ", concert_rating: 4);
Review.create(concert_id: concert6.id, user_id: user6.id, comment: "I couldn't see anything.", concert_rating: 1);
Review.create(concert_id: concert7.id, user_id: user7.id, comment: "Leanfest.", concert_rating: 3);
Review.create(concert_id: concert8.id, user_id: user8.id, comment: "Willy B has never missed. You can't miss this concert", concert_rating: 5);


puts "Seeding done!"
