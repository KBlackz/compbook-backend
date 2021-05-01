# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Complist.destroy_all
User.destroy_all
Home.destroy_all

user1 = User.create(name: "Bob", interest: "agent", password: "123")
user2 = User.create(name: "Alie", interest: "investor", password: "123")
home1 = Home.create(address: "130-15 222th street springfield gardens n.y 11413", property_size: 1500, last_sold: 347000, data: "N/A", image: "https://cdn.builtinnyc.com/sites/www.builtinnyc.com/files/styles/ckeditor_optimize/public/inline-images/perch.jpg")
home2 = Home.create(address: "130-25 222th street springfield gardens n.y 11413", property_size: 1500, last_sold: 347000, data: "N/A", image: "https://cdn.builtinnyc.com/sites/www.builtinnyc.com/files/styles/ckeditor_optimize/public/inline-images/perch.jpg")
home3 = Home.create(address: "130-35 222th street springfield gardens n.y 11413", property_size: 1500, last_sold: 347000, data: "N/A", image: "https://cdn.builtinnyc.com/sites/www.builtinnyc.com/files/styles/ckeditor_optimize/public/inline-images/perch.jpg")
home4 = Home.create(address: "130-62 222th street springfield gardens n.y 11413", property_size: 1500, last_sold: 347000, data: "N/A", image: "https://cdn.builtinnyc.com/sites/www.builtinnyc.com/files/styles/ckeditor_optimize/public/inline-images/perch.jpg")
home5 = Home.create(address: "133-61 222th street springfield gardens n.y 11413", property_size: 1500, last_sold: 347000, data: "N/A", image: "https://cdn.builtinnyc.com/sites/www.builtinnyc.com/files/styles/ckeditor_optimize/public/inline-images/perch.jpg")

Complist.create(home: home1, user: user1, user_note: "Set up meeting for next thursday")
Complist.create(home: home2, user: user1, user_note: "called today")
Complist.create(home: home3, user: user1, user_note: "dont like")

Complist.create(home: home1, user: user2, user_note: "Set up meeting for next wednesday")