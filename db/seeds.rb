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


Item.create!(name: "2 Burner Stove", description: "Perfect for cooking, compact and lightweight", image: File.open("/Users/apprentice/Downloads/stove.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "3 Person Tent", description: "Good condition, barely used and spacious", image: File.open("/Users/apprentice/Downloads/3persontent.png"), user_id: (User.find_by(email: "b@email.com").id))
Item.create!(name: "Patagonia Backpack", description: "High-quality material and durable. Plenty of room for your stuff.", image: File.open("/Users/apprentice/Downloads/patagoniabackpack.jpg"), user_id: (User.find_by(email: "c@email.com").id))
Item.create!(name: "Sleeping Bag - Women's", description: "20 degree Fahrenheit rating, full-length, plenty of room", image: File.open("/Users/apprentice/Downloads/sleepingbag.jpg"), user_id: (User.find_by(email: "d@email.com").id))
Item.create!(name: "Men's Hiking Boots - Size 9", description: "Mid Hiking Boots, good tread, good toe protection", image: File.open("/Users/apprentice/Downloads/hikingboots.jpeg"), user_id: (User.find_by(email: "e@email.com").id))
Item.create!(name: "Propane Fuel Lantern", description: "Cracked case, but still works. You need to provide your own propane tank.", image: File.open("/Users/apprentice/Downloads/propanelantern.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "REI portable camping chair", description: "This chair is the best! Happy to loan it to you!", image: File.open("/Users/apprentice/Downloads/reichair.jpg"), user_id: (User.find_by(email: "b@email.com").id))
Item.create!(name: "Small cooler", description: "I have an extra cooler and it's a Yeti so it can take a beating.", image: File.open("/Users/apprentice/Downloads/yeticooler.jpg"), user_id: (User.find_by(email: "c@email.com").id))
Item.create!(name: "2 Person Tent", description: "Travels and packs light, I got a new tent so this is just laying around.", image: File.open("/Users/apprentice/Downloads/tent-example.jpg"), user_id: (User.find_by(email: "d@email.com").id))
Item.create!(name: "Folding Knife", description: "4 inch blade. Very useful and sharp so be careful.", image: File.open("/Users/apprentice/Downloads/knife.jpg"), user_id: (User.find_by(email: "e@email.com").id))
Item.create!(name: "Mummy sleeping bag", description: "A few years old, but still in good condition", image: File.open("/Users/apprentice/Downloads/sleepingbag2.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "Utensil set", description: "I have an old-school utensil set laying around the house.", image: File.open("/Users/apprentice/Downloads/utensils.jpg"), user_id: (User.find_by(email: "b@email.com").id))
Item.create!(name: "Unisex Northface jacket", description: "Nice color for men or women. Will keep you warm.", image: File.open("/Users/apprentice/Downloads/jacket.jpg"), user_id: (User.find_by(email: "c@email.com").id))
Item.create!(name: "Hiking poles", description: "Adjustable hiking poles that I've never used. Let me know if you want to test them out", image: File.open("/Users/apprentice/Downloads/poles.jpg"), user_id: (User.find_by(email: "d@email.com").id))
Item.create!(name: "Headlamp", description: "Always good to bring a headlamp on your camping trip, you'll never know when you need it. This one has served me well.", image: File.open("/Users/apprentice/Downloads/headlamp.jpg"), user_id: (User.find_by(email: "e@email.com").id))
Item.create!(name: "Sleeping pad", description: "Easy to setup and makes a big difference when sleeping on rough terrain.", image: File.open("/Users/apprentice/Downloads/sleepingpad.jpg"), user_id: (User.find_by(email: "a@email.com").id))
Item.create!(name: "Small Table", description: "I'm willing to loan out this small table. It's foldable and lighweight so it's really easy to pack.", image: File.open("/Users/apprentice/Downloads/table.jpeg"), user_id: (User.find_by(email: "b@email.com").id))
Item.create!(name: "4 Person Tent", description: "Plenty of room inside. We don't use this one anymore, but don't want to throw it away.", image: File.open("/Users/apprentice/Downloads/4persontent.jpg"), user_id: (User.find_by(email: "c@email.com").id))
Item.create!(name: "Backpack", description: "Simple design. It's a little old but still in good condition.", image: File.open("/Users/apprentice/Downloads/backpack2.jpg"), user_id: (User.find_by(email: "d@email.com").id))
Item.create!(name: "Hammock", description: "Awesome hammock and so easy to set up. You'll love it!", image: File.open("/Users/apprentice/Downloads/hammock.jpg"), user_id: (User.find_by(email: "e@email.com").id))
Item.create!(name: "Folding chair", description: "Extra chair if someone wants to use it. It's pretty basic, but it's comfortable", image: File.open("/Users/apprentice/Downloads/chair2.jpg"), user_id: (User.find_by(email: "a@email.com").id))

