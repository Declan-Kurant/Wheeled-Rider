# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comment.destroy_all
Category.destroy_all
Vehicle.destroy_all


unicycle = Vehicle.create([{name:"Unicycle", img_url:"https://i5.walmartimages.com/asr/7b9272f6-9b0a-4c46-8d8a-cf9523a9acef_1.946132f06df02c2a9705fad5cdab7add.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF"}])
bicycle = Vehicle.create ([{name:"Bicycle", img_url:"https://cdn.shopify.com/s/files/1/0232/3305/products/state_bicycle_co_matte_red_wyldcat_fixie_1_large.jpg?v=1484345284"}])

# muni = unicycle.categories.create([{title:"Muni: mountain unicycling", author:"pagemaker", num_replies: 0, last_reply: nil}])
# no_seat = bicycle.categories.create([{title:"Riding without a seat", author:"pagemaker", num_replies: 0, last_reply: nil}])
#
# muni.comments.create ([{content:"I ride a 26er", tier_of_reply: 1, author:"pagemaker", time_posted: nil}])
# no_seat.comments.create ([{content:"Does it hurt for you folks?", tier_of_reply: 1, author:"pagemaker", time_posted: nil}])


# # Create Users
# (1..100).each do |i|
#   User.create!(
#     email: "user_#{i}@generalassemb.ly",
#     password: "12345678"
#   )
# end
