
require "open-uri"

puts 'Cleaning database...'
Transaction.destroy_all
Nvt.destroy_all
User.destroy_all

puts 'Creating users...'
user_1 = User.create!(username: "Cedric", email: "user_1@example.com", password: "123456")
user_2 = User.create!(username: "Rox the Terrible ", email: "user_2@example.com", password: "123456")
user_3 = User.create!(username: "Joe", email: "user_3@example.com", password: "123456")
user_4 = User.create!(username: "David", email: "user_4@example.com", password: "123456")

puts 'Creating nvts...'

nvt_1 = Nvt.new(title: "th_27_xlmal2", content: "Nostalgic for Neopets? Pining for club penguin? Missing moshi monsters? Never fear, Gimme Gargoyles is here! Grab your Gargoyle!", price: "390", category: "art", date: "2022-11-11")
file_1 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828109/NVTs/th_27_xlmal2.jpg")
nvt_1.photo.attach(io: file_1, filename: "th_27_xlmal2.jpg", content_type: "image/jpg")

nvt_2 = Nvt.new(title: "th_122_fh8udw", content: "3d Brave buddha chinese tiger. The collection includes 10,000 unique nvts which each buddha chinese tiger has its own story, live like a king tiger.", price: "200", category: "animal", date: "2022-10-20")
file_2 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828112/NVTs/th_122_fh8udw.jpg")
nvt_2.photo.attach(io: file_2, filename: "th_122_fh8udw.jpg", content_type: "image/jpg")

nvt_3 = Nvt.new(title: "th_121_y83ewh", content: "A community-driven collectibles project featuring art by Burnt Toast. Th_121_y83ewh comes in a joyful range of colors, traits and sizes with a collection size of 10,000. Each th_121_y83ewh allows its owner to vote for experiences and activations paid for by the Community Treasury. Burnt Toast is the working alias for Scott Martin, a Canadian–based illustrator, designer, animator and muralist.", price: "320", category: "sport", date: "2022-10-30")
file_3 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828112/NVTs/th_121_y83ewh.jpg")
nvt_3.photo.attach(io: file_3, filename: "th_121_y83ewh.jpg", content_type: "image/jpg")

nvt_4 = Nvt.new(title: "th_132_njyktf", content: "CryptoPunks launched as a fixed set of 10,000 items in mid-2017 and became one of the inspirations for the ERC-721 standard. They have been featured in places like The New York Times, Christie’s of London, Art|Basel Miami, and The PBS NewsHour.", price: "250", category: "art", date: "2022-10-30")
file_4 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828111/NVTs/th_132_njyktf.jpg")
nvt_4.photo.attach(io: file_4, filename: "th_132_njyktf.jpg", content_type: "image/jpg")

nvt_5 = Nvt.new(title: "th_22_zvsxdr", content: "Degen Ape Club is a collection of 5,555 unique pixelated BAYC inspired NFT's built on the Binance Smart Chain *NOT AFFILATED WITH BAYC.", price: "810", category: "art", date: "2022-12-01")
file_5 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828109/NVTs/th_22_zvsxdr.jpg")
nvt_5.photo.attach(io: file_5, filename: "th_22_zvsxdr.jpg", content_type: "image/jpg")

nvt_6 = Nvt.new(title: "th_111_grtvao", content: "During a dreamlike journey we discovered a great variety of strange creatures. They are colorful, absurd and tragicomicWe have reported 500 unique scientific observations of this new species. Find the silver and gold monsters and the legendary black or white. Discover them all!", price: "560", category: "art", date: "2022-10-30")
file_6 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828111/NVTs/th_111_grtvao.jpg")
nvt_6.photo.attach(io: file_6, filename: "th_111_grtvao.jpg", content_type: "image/jpg")

nvt_7 = Nvt.new(title: "th_110_vijvxx", content: "3d Brave smoking wolf. The collection includes 10,000 unique nvts which each wolf has its own story, live like a gang chief wolf.", price: "660", category: "animal", date: "2022-10-30")
file_7 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828111/NVTs/th_110_vijvxx.jpg")
nvt_7.photo.attach(io: file_7, filename: "th_110_vijvxx.jpg", content_type: "image/jpg")

nvt_8 = Nvt.new(title: "th_94_vecaa8", content: "A collection of 50 hand-drawn and digitally painted clownz. Discover all psychopath clownz.", price: "410", category: "art", date: "2022-10-01")
file_8 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828110/NVTs/th_94_vecaa8.jpg")
nvt_8.photo.attach(io: file_8, filename: "th_94_vecaa8.jpg", content_type: "image/jpg")

nvt_9 = Nvt.new(title: "th_95_zxqlhp", content: "Robotos is a collection of algorithmically generated droid characters designed by Pablo Stanley.", price: "720", category: "art", date: "2022-10-30")
file_9 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828111/NVTs/th_95_zxqlhp.jpg")
nvt_9.photo.attach(io: file_9, filename: "th_95_zxqlhp.jpg", content_type: "image/jpg")

nvt_10 = Nvt.new(title: "th_61_nkfdoc", content: "4444 moneyguys building the metaverse.", price: "250", category: "art", date: "2022-10-30")
file_10 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828110/NVTs/th_61_nkfdoc.jpg")
nvt_10.photo.attach(io: file_10, filename: "th_61_nkfdoc.jpg", content_type: "image/jpg")

nvt_11 = Nvt.new(title: "th_96_pnh8z7", content: "Robotos is a collection of algorithmically generated droid characters designed by Pablo Stanley.", price: "290", category: "art", date: "2022-10-25")
file_11 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828110/NVTs/th_96_pnh8z7.jpg")
nvt_11.photo.attach(io: file_11, filename: "th_96_pnh8z7.jpg", content_type: "image/jpg")

nvt_12 = Nvt.new(title: "th_53_u4nhec", content: "The Humanoids Gen 1 is a collection of 10,000 unique 3D 4K chewing personalities.", price: "340", category: "art", date: "2022-11-25")
file_12 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828110/NVTs/th_53_u4nhec.jpg")
nvt_12.photo.attach(io: file_12, filename: "th_53_u4nhec.jpg", content_type: "image/jpg")


nvt_13 = Nvt.new(title: "th_103_ndaz84", content: "SOL is a collection of 365 generative paintings that captures a precise portrait in time, when the sun is rising above the horizon. Each generative output is influenced by real world 2023 population. Every location, date, time and sunrise angle is unique. Just like IRL, no two SOLs are alike.", price: "430", category: "art", date: "2022-10-30")
file_13 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828111/NVTs/th_103_ndaz84.jpg")
nvt_13.photo.attach(io: file_13, filename: "th_110_vijvxx.jpg", content_type: "image/jpg")

nvt_14 = Nvt.new(title: "th_72_mfmqxb", content: "Brave Animals. The collection includes 10,000 unique nvts which each animals has its own story, live like a king of the forest.", price: "310", category: "animal", date: "2022-10-30")
file_14 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828111/NVTs/th_72_mfmqxb.jpg")
nvt_14.photo.attach(io: file_14, filename: "th_72_mfmqxb.jpg", content_type: "image/jpg")

nvt_15 = Nvt.new(title: "th_127_bi4ubz", content: "A community-driven collectibles project featuring art by Burnt Toast. Th_127_bi4ubz comes in a joyful range of colors, traits and sizes with a collection size of 10,000. Each th_127_bi4ubz allows its owner to vote for experiences and activations paid for by the Community Treasury. Burnt Toast is the working alias for Scott Martin, a Canadian–based illustrator, designer, animator and muralist.", price: "180", category: "sport", date: "2022-09-23")
file_15 = URI.open("https://res.cloudinary.com/duotc6hkn/image/upload/v1669828112/NVTs/th_127_bi4ubz.jpg")
nvt_15.photo.attach(io: file_15, filename: "th_127_bi4ubz.jpg", content_type: "image/jpg")


puts "testing"
nvt_1.user = user_1
nvt_1.save!

nvt_2.user = user_1
nvt_2.save!

nvt_3.user = user_1
nvt_3.save!

nvt_4.user = user_1
nvt_4.save!

nvt_5.user = user_2
nvt_5.save!

nvt_6.user = user_1
nvt_6.save!

nvt_7.user = user_2
nvt_7.save!

nvt_8.user = user_2
nvt_8.save!

nvt_9.user = user_2
nvt_9.save!

nvt_10.user = user_3
nvt_10.save!

nvt_11.user = user_3
nvt_11.save!

nvt_12.user = user_3
nvt_12.save!

nvt_13.user = user_4
nvt_13.save!

nvt_14.user = user_4
nvt_14.save!

nvt_15.user = user_4
nvt_15.save!

transaction_1 = Transaction.new(comment: "I really need this NVT for my collection! Please accept my request or you will have to face my anger 😈")
transaction_1.user = user_2
transaction_1.nvt = nvt_2
transaction_1.save!

transaction_2 = Transaction.new(comment: "Please sold me your NVT!")
transaction_2.user = user_4
transaction_2.nvt = nvt_9
transaction_2.save!

transaction_3 = Transaction.new(comment: "Please accept my request for the NVT transaction.")
transaction_3.user = user_3
transaction_3.nvt = nvt_15
transaction_3.save!

puts "La seed a été créé"
