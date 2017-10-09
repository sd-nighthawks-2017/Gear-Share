# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all

User.create!(username: "emusk", email: "a@email.com", first_name: "Elon", last_name: "Musk", birthdate: "1971-06-28", location: "13333 Russet Leaf Lane, San Diego, CA 92129", avatar: File.open("/Users/apprentice/Downloads/emusk.jpg"), password: "password")
User.create!(username: "r.romano", email: "b@email.com", first_name: "Ray", last_name: "Romano", birthdate: "1971-06-28", location: "1009 Hunter Street, San Diego, CA 92103", avatar: File.open("/Users/apprentice/Downloads/romano.jpg"), password: "password")
User.create!(username: "bbarry", email: "c@email.com", first_name: "Brent", last_name: "Barry", birthdate: "1971-06-28", location: "2400 5th Avenue, San Diego, CA 92101", avatar: File.open("/Users/apprentice/Downloads/brent-barry.jpg"), password: "password")
User.create!(username: "owinfrey", email: "d@email.com", first_name: "Oprah", last_name: "Winfrey", birthdate: "1971-06-28", location: "1455 Mariposa Street, San Diego, CA 92114", avatar: File.open("/Users/apprentice/Downloads/oprah.jpg"), password: "password")
User.create!(username: "rbg", email: "e@email.com", first_name: "Ruth Bader", last_name: "Ginsburg", birthdate: "1971-06-28", location: "12097 Ferncrest Place, San Diego, CA 92128", avatar: File.open("/Users/apprentice/Downloads/ginsburg.jpg"), password: "password")


Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "2 Burner Stove", description: "perfect for cooking, compact and ligtweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
