
puts 'Cleaning database...'
Nvt.destroy_all
User.destroy_all

puts 'Creating users...'
user_1 = User.create!(username: "Cedric L", email: "user_5@example.com", password: "123456")
user_2 = User.create!(username: "Vlad the Impaler ", email: "user_6@example.com", password: "123456")
user_3 = User.create!(username: "Ivan the Terrible", email: "user_7@example.com", password: "123456")
user_4 = User.create!(username: "Caligula", email: "user_8@example.com", password: "123456")
user_5 = User.create!(username: "Attila the Hun", email: "user_2@example.com", password: "123456")

puts 'Creating nvts...'
nvt_1 = Nvt.new(title: "ridgfhdoibowefbew", content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", price: "120", category: "art", picture: "https://journalducoin-com.exactdn.com/app/uploads/2021/10/singe-record.png?strip=all&lossy=1&quality=66&ssl=1", date: "2022-09-23")
nvt_2 = Nvt.new(title: "fgijdoifjsdoifhj", content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", price: "200", category: "photography", picture: "https://journalducoin-com.exactdn.com/app/uploads/2021/10/singe-record.png?strip=all&lossy=1&quality=66&ssl=1", date: "2022-10-20")
nvt_3 = Nvt.new(title: "dsfknsdofliedsf", content: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", price: "120", category: "art", picture: "https://journalducoin-com.exactdn.com/app/uploads/2021/10/singe-record.png?strip=all&lossy=1&quality=66&ssl=1", date: "2022-10-30")

puts "testing"
nvt_1.user = user_1
nvt_1.save!
puts "user_1"
nvt_2.user = user_2
nvt_2.save!
puts "user_2"
nvt_3.user = user_3
nvt_3.save!
puts "user_3"

puts "La seed a été créé"
