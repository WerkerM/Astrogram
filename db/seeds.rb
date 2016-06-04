# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "George", username: "georgebaby", email: "george@george.com", password: "password", password_confirmation: "password")
user2 = User.create(name: "Frank", username: "frankiebaby", email: "fronk@fronk.com", password: "password", password_confirmation: "password", astronaut: true)
user3 = User.create(name: "Steve", username: "steviebaby", email: "steev@steev.com", password: "password", password_confirmation: "password", astronaut: true)
user4 = User.create(name: "Smiiiiiiiitty", username: "smittybaby", email: "smitty@smitty.com", password: "password", password_confirmation: "password")
user5 = User.create(name: "Jimmy", username: "jimbaby", email: "jim@jim.com", password: "password", password_confirmation: "password")
user6 = User.create(name: "Too Cool for a Name", username: "2cool4u", email: "toocool@4school.com", password: "password", password_confirmation: "password")

follow1 = Follow.create(user: user1, astronaut: user2)
follow2 = Follow.create(user: user1, astronaut: user3)
follow3 = Follow.create(user: user3, astronaut: user2)
follow4 = Follow.create(user: user4, astronaut: user3)
follow5 = Follow.create(user: user4, astronaut: user3)
follow6 = Follow.create(user: user5, astronaut: user2)
follow7 = Follow.create(user: user6, astronaut: user2)
follow8 = Follow.create(user: user6, astronaut: user3)

post1 = Post.create(content: "Omg! I'm posting from SPAAAAACE!", video_url: "https://www.youtube.com/watch?v=SGP6Y0Pnhe4", astronaut: user2)
post2 = Post.create(content: "Look ma, no hands!", image_url: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Sunita_Williams_astronaut_spacewalk.jpg", astronaut: user2)
post3 = Post.create(content: "Ugh, damn gamma rays keep making my eyeballs light up. Not fun.", astronaut: user3)
post4 = Post.create(content: "Whoa... what was that thing that zoomed by us just now? Didn't seem American... didn't even seem human. Pretty odd.", astronaut: user3)
post5 = Post.create(content: "Exploring anti-gravity sports! Who wants to play??", video_url: "https://www.youtube.com/watch?v=4IYDb6K5UF8", astronaut: user3)
post6 = Post.create(content: "Went starwalking today...", image_url: "http://apod.nasa.gov/apod/image/1605/NGC5078-LRGBhager1024.jpg")
post7 = Post.create(content: "Первый Урок! Ыюм пыртенакж констятюам ат, заэпы волуптюа пэрчыквюэрёж мэль эи, конгуы оффэндйт конкльюдатюрквюэ вяш ку.", video_url: "https://www.youtube.com/watch?v=3jr2m_oEGcU")
post8 = Post.create(content: "So sick of freeze dried ice cream. FML.", astronaut: user4)
post9 = Post.create(content: "Another gorgeous day up here!", image_url: "http://www.nasa.gov/sites/default/files/11572307115_1194957269_o_0.jpg", astronaut: user2)

comment1 = Comment.create(content: "Having fun up there??", post: post1, user: user1)
comment2 = Comment.create(content: "Dude! That's so cool! We're all jealous of you down here :D", post: post1, user: user5)
comment3 = Comment.create(content: "Yeah, I mean... there's no air, so duh, lol", post: post2, user: user6)
comment4 = Comment.create(content: "Haha I hope you don't go CRAAAAAZY!!!", post: post2, user: user1)
comment5 = Comment.create(content: "Really? Y'all should be partying!!", post: post2, user: user4)
comment6 = Comment.create(content: "Be careful :(", post: post3, user: user1)
comment7 = Comment.create(content: "Uhh that doesn't sound healthy...", post: post3, user: user4)
comment8 = Comment.create(content: "OMG DID YOU TAKE VIDEO????", post: post4, user: user5)
comment9 = Comment.create(content: "Holy crap! That's insane!", post: post4, user: user4)
comment10 = Comment.create(content: "Hey, uh, shouldn't that be classified info or something...?", post: post4, user: user6)
