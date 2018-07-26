# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
10.times do
	city = City.create(name:Faker::Address.city, postal_code: Faker::Address.zip_code)
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph,email: Faker::Internet.email,age: rand(18..99), city_id: rand(1..10) )
end
10.times do
	gossip = Gossip.create(title:Faker::NewGirl.character, content:Faker::Lorem.paragraph, user_id: rand(1..10))
	tag = Tag.create(title: Faker::NewGirl.character, gossip_id: rand(1..10))
end
20.times do
	comment = Comment.create(content:Faker::Lorem.paragraph, user_id: rand(1..10), gossip_id: rand(1..10))
	like = Like.create(user_id: rand(1..10),comment_id: rand(1..20))
	like = Like.create(user_id: rand(1..10),gossip_id: rand(1..10))
	comment_acomment = CommentAcomment.create(content: Faker::Lorem.paragraph, comment_id: rand(1..20))
end
private_message = PrivateMessage.create(content: Faker::Lorem.paragraph, recipient_id: rand(1..10), sender_id: rand(1..10))

