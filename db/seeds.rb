# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1  = User.create(name: "George Lin", username: "georgef", email: "george@george.com", password: "password", password_confirmation: "password", confirmed: true)
user2  = User.create(name: "Frank Herbert", username: "frankiesr", email: "fronk@fronk.com", password: "password", password_confirmation: "password", confirmed: true)
user3  = User.create(name: "Iain Banks", username: "iainmbanks", email: "steev@steev.com", password: "password", password_confirmation: "password", confirmed: true)
user4  = User.create(name: "Smiiiiiiiitty", username: "smitty", email: "smitty@smitty.com", password: "password", password_confirmation: "password", confirmed: true)
user5  = User.create(name: "Jimmy", username: "jim4212", email: "jim@jim.com", password: "password", password_confirmation: "password", confirmed: true)
user6  = User.create(name: "Too Cool for a Name", username: "2cool4u", email: "toocool@4school.com", password: "password", password_confirmation: "password", confirmed: true)
user7  = User.create(name: "Mikey 4EVA", username: "mikeman", email: "moik@mikey.com", password: "password", password_confirmation: "password", confirmed: true)
user8  = User.create(name: "Snoozie McSnoozer", username: "snoozemaster", email: "snoozy@snooze.com", password: "password", password_confirmation: "password", confirmed: true)
user9  = User.create(name: "Elizabeth Betsy Lee-Ann III", username: "lizzybaby", email: "elizabeth@lizzy.com", password: "password", password_confirmation: "password", confirmed: true)
user10 = User.create(name: "George W. Bush", username: "georgew", email: "bushmaster@usa.gov", password: "password", password_confirmation: "password", confirmed: true)
user11 = User.create(name: "Barack", username: "baracka", email: "elpresidente@gmail.com", password: "password", password_confirmation: "password", confirmed: true)
user12 = User.create(name: "Larry David", username: "larryd", email: "larry@david.com", password: "password", password_confirmation: "password", confirmed: true)
user13 = User.create(name: "Tom Waits", username: "waitingfortom", email: "tom@tomwaits.com", password: "password", password_confirmation: "password", confirmed: true)
user14 = User.create(name: "Elizabeth Lemon", username: "lizlemon", email: "lizisalemon@gmail.com", password: "password", password_confirmation: "password", confirmed: true)
user15 = User.create(name: "Samantha Bee", username: "samanthababybee", email: "sammy@bee.com", password: "password", password_confirmation: "password", confirmed: true)
user16 = User.create(name: "Jessica Rabbit", username: "jessiebaby", email: "jessicarabbit@gmail.com", password: "password", password_confirmation: "password", confirmed: true)
user17 = User.create(name: "Rachel McAdams", username: "rachel", email: "rachel@friends.com", password: "password", password_confirmation: "password", confirmed: true)
user18 = User.create(name: "George Costanza", username: "huehuehueHUEHUEHUEhuehuehue", email: "georgehatesclowns@gmail.com", password: "password", password_confirmation: "password", confirmed: true)
user19 = User.create(name: "Mary Elizabeth Masterson", username: "marymaster", email: "mary@masterson.com", password: "password", password_confirmation: "password", confirmed: true)
user20 = User.create(name: "Frankie Baby", username: "thegreatsinatra", email: "sinatra@ratpack.com", password: "password", password_confirmation: "password", confirmed: true)
user21 = User.create(name: "Woody", username: "woody", email: "sadearthman@gmail.com", password: "password", password_confirmation: "password", confirmed: true)

astronaut1  = User.create(name: "Philip K. Chapman", username: "philip", email: "philchappy@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut2  = User.create(name: "Ellen S. Baker", username: "ellenbaker", email: "ellen@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut3  = User.create(name: "Viktor M. Afanasyev", username: "afanofviktor", email: "viktor@tsniimash.ru", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut4  = User.create(name: "Roberta Bondar", username: "robertabondar", email: "roberta@asc-csa.gc.ca", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut5  = User.create(name: "Valentina Tereshkova", username: "valentina", email: "valentinatereshkova@tsniimash.ru", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut6  = User.create(name: "Naoko Yamazaki", username: "naoko", email: "naoko@jaxa.jp", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut7  = User.create(name: "Marcos Pontes", username: "marcospontes", email: "notrubio@inpe.br", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut8  = User.create(name: "Klaus-Dietrich Flade", username: "klaus", email: "klaws@dlr.de", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut9  = User.create(name: "James Adamson", username: "jamiethespacepilot", email: "goodsirjames@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut10 = User.create(name: "Jean-Loup Chrétien", username: "jeanloup", email: "jeanjean@cnes.fr", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut11 = User.create(name: "Yang Liwei", username: "liweithefirst", email: "yangliwei@cnsa.gov.cn", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut12 = User.create(name: "Reinhold Ewald", username: "reinontherhine", email: "reinhold@dlr.de", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut13 = User.create(name: "Neil Armstrong", username: "neilarmy", email: "neila@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut14 = User.create(name: "Andreas Mogensen", username: "andreas", email: "andreas@esa.int", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut15 = User.create(name: "Yuri Gagarin", username: "yurithegreatest", email: "yuri@tsniimash.ru", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut16 = User.create(name: "Joseph M. Acaba", username: "joeymaca", email: "joey@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut17 = User.create(name: "Timothy Peake", username: "timpeake", email: "peektim@esa.int", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut18 = User.create(name: "Samantha Cristoforetti", username: "samanthacris", email: "samantha@asi.it", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut19 = User.create(name: "Jean-Loup Chrétien", username: "jeanloup", email: "jeanjean@cnes.fr", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut20 = User.create(name: "Koichi Wakata", username: "koichi", email: "wakata@jaxa.jp", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut21 = User.create(name: "Aydyn Aimbetov", username: "aydynaimbetov", email: "aydyn@tsniimash.ru", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut22 = User.create(name: "Helen Sharman", username: "thegreathelena", email: "helena@stfc.ac.uk", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut23 = User.create(name: "Buzz Aldrin", username: "buzzthegreatone", email: "buzz@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut24 = User.create(name: "Liu Yang", username: "yangliu", email: "yangliu@cnsa.gov.cn", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut25 = User.create(name: "Michael Foale", username: "michaelfoale", email: "mikefoale@stfc.ac.uk", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut26 = User.create(name: "Thomas Pesquet", username: "thomaspes", email: "thom@cnes.fr", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut27 = User.create(name: "Mark Shuttleworth", username: "shuttleman", email: "mshuttle@stfc.ac.uk", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut28 = User.create(name: "Chris Hadfield", username: "chrishadfield", email: "chris@asc-csa.gc.ca", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut29 = User.create(name: "Pavel Popovich", username: "pavel", email: "pavel@tsniimash.ru", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut30 = User.create(name: "Maurizio Cheli", username: "maurice", email: "mauricio@asi.it", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut31 = User.create(name: "Buzz Lightyear", username: "buzzlightyear", email: "buzz@space-rangers.space", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut32 = User.create(name: "Justin Nazari", username: "jspaceman", email: "justin@space-rangers.space", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut33 = User.create(name: "Jean-Luc Picard", username: "jeanluc", email: "jeanluc@starfleet.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut34 = User.create(name: "Antoin Campbell", username: "antoinbaby", email: "jeanluc@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)
astronaut35 = User.create(name: "Laika", username: "laikadoggy", email: "ontheinternetnobodyknowsyoureadog@tsniimash.ru", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)

follow1  = Follow.create(user: user1, astronaut: astronaut1)
follow2  = Follow.create(user: user1, astronaut: astronaut2)
follow3  = Follow.create(user: user3, astronaut: astronaut3)
follow4  = Follow.create(user: user4, astronaut: astronaut4)
follow5  = Follow.create(user: user4, astronaut: astronaut6)
follow6  = Follow.create(user: user5, astronaut: astronaut2)
follow7  = Follow.create(user: user6, astronaut: astronaut8)
follow8  = Follow.create(user: user7, astronaut: astronaut8)
follow8  = Follow.create(user: user6, astronaut: astronaut9)
follow9  = Follow.create(user: user1, astronaut: astronaut1)
follow10 = Follow.create(user: user1, astronaut: astronaut13)
follow11 = Follow.create(user: user13, astronaut: astronaut30)
follow12 = Follow.create(user: user13, astronaut: astronaut24)
follow13 = Follow.create(user: user14, astronaut: astronaut16)
follow14 = Follow.create(user: user15, astronaut: astronaut22)
follow15 = Follow.create(user: user16, astronaut: astronaut8)
follow16 = Follow.create(user: user16, astronaut: astronaut18)
follow17 = Follow.create(user: user6, astronaut: astronaut29)
follow18 = Follow.create(user: user11, astronaut: astronaut11)
follow19 = Follow.create(user: user1, astronaut: astronaut2)
follow20 = Follow.create(user: user13, astronaut: astronaut23)
follow21 = Follow.create(user: user4, astronaut: astronaut4)
follow22 = Follow.create(user: user14, astronaut: astronaut16)
follow23 = Follow.create(user: user5, astronaut: astronaut2)
follow24 = Follow.create(user: user16, astronaut: astronaut28)
follow25 = Follow.create(user: user8, astronaut: astronaut18)
follow26 = Follow.create(user: user6, astronaut: astronaut9)

post1  = Post.create(content: "Omg! I'm posting from SPAAAAACE!", video_url: "https://www.youtube.com/watch?v=SGP6Y0Pnhe4", astronaut: astronaut2)
post2  = Post.create(content: "Look ma, no hands!", image_url: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Sunita_Williams_astronaut_spacewalk.jpg", astronaut: astronaut5)
post3  = Post.create(content: "Ugh, damn gamma rays keep making my eyeballs light up. Not fun.", astronaut: astronaut1)
post4  = Post.create(content: "Whoa... what was that thing that zoomed by us just now? Didn't seem American... didn't even seem human. Pretty odd.", astronaut: astronaut4)
post5  = Post.create(content: "Exploring anti-gravity sports! Who wants to play??", video_url: "https://www.youtube.com/watch?v=4IYDb6K5UF8", astronaut: astronaut8)
post6  = Post.create(content: "Went starwalking today...", image_url: "http://apod.nasa.gov/apod/image/1605/NGC5078-LRGBhager1024.jpg", astronaut: astronaut25)
post7  = Post.create(content: "Первый Урок! Ыюм пыртенакж констятюам ат, заэпы волуптюа пэрчыквюэрёж мэль эи, конгуы оффэндйт конкльюдатюрквюэ вяш ку.", video_url: "https://www.youtube.com/watch?v=3jr2m_oEGcU", astronaut: astronaut15)
post8  = Post.create(content: "So sick of freeze dried ice cream. FML.", astronaut: astronaut19)
post9  = Post.create(content: "Another gorgeous day up here!", image_url: "http://www.nasa.gov/sites/default/files/11572307115_1194957269_o_0.jpg", astronaut: astronaut22)
post10 = Post.create(content: "Everything smells so nice up here... away from the smelly people on Earth :P", astronaut: astronaut12)
post11 = Post.create(content: "Near Venus. Can't tell if I'm feeling extra amorous or not.", astronaut: astronaut12)
post12 = Post.create(content: "Pip pip! The tea up here is just awful!", astronaut: astronaut17)
post13 = Post.create(content: "The earth is so beautiful.", image_url: "http://science-all.com/images/wallpapers/earth-from-space/earth-from-space-12.jpg", astronaut: astronaut30)
post14 = Post.create(content: "Another day of space rations.", image_url: "https://3.bp.blogspot.com/-C9vIkfTxnE8/VXCilBLgK2I/AAAAAAABPcU/IAZqTnjO0Io/s1600/MREs.jpg", astronaut: astronaut20)
post15 = Post.create(content: "On the moon!", image_url: "https://www.hq.nasa.gov/alsj/a17/a17-21493and96.jpg", astronaut: astronaut12)
post16 = Post.create(content: "Thank God for this spacesuit: the solar radiation is so strong this close.", image_url: "http://i1.mirror.co.uk/incoming/article2483007.ece/ALTERNATES/s1227b/Close-up-of-the-Sun-showing-a-solar-prominence-and-a-sunspot.jpg", astronaut: astronaut2)
post17 = Post.create(content: "This is the life for me.", astronaut: astronaut5)
post18 = Post.create(content: "Deep space. The loneliest place of all.", image_url: "http://wallpaperswide.com/deep_space-wallpapers.html", astronaut: astronaut24)
post19 = Post.create(content: "So glad to be coming home soon. I miss my family.", astronaut: astronaut31)
post20 = Post.create(content: "Whoa! Zero grav is FREAKIN' me out, man! Ahhhhhhhh!!!", astronaut: astronaut34)
post21 = Post.create(content: "Woof! Woof woof! Aroooooooooooo!!", astronaut: astronaut35)

spacetag1  = SpaceTag.create(polar: 23.5, azimuth: 13.7, radius: 120.1, relational_body: "Earth", units: "km", post: post1)
spacetag2  = SpaceTag.create(polar: 73, azimuth: 40, radius: 273, relational_body: "Earth", units: "km", post: post2)
spacetag3  = SpaceTag.create(polar: 43, azimuth: 12, radius: 2374, relational_body: "Mars", units: "km", post: post3)
spacetag4  = SpaceTag.create(polar: 12, azimuth: 42, radius: 189.4, relational_body: "Earth", units: "km", post: post4)
spacetag5  = SpaceTag.create(polar: 73, azimuth: 25, radius: 1013, relational_body: "Solar Center", units: "Mkm", post: post5)
spacetag6  = SpaceTag.create(polar: 72, azimuth: 55, radius: 332, relational_body: "Earth", units: "km", post: post6)
spacetag7  = SpaceTag.create(polar: 2, azimuth: 36, radius: 121, relational_body: "Earth", units: "km", post: post7)
spacetag8  = SpaceTag.create(polar: 44, azimuth: 46, radius: 211, relational_body: "The Moon", units: "km", post: post8)
spacetag9  = SpaceTag.create(polar: 76, azimuth: 61, radius: 150, relational_body: "Earth", units: "km", post: post9)
spacetag10 = SpaceTag.create(polar: 46, azimuth: 89.5, radius: 5352, relational_body: "Saturn", units: "km", post: post10)
spacetag11 = SpaceTag.create(polar: 66, azimuth: 8, radius: 2450, relational_body: "Venus", units: "km", post: post11)
spacetag12 = SpaceTag.create(polar: 72.4, azimuth: 43.8, radius: 10354.2, relational_body: "Earth", units: "km", post: post12)
spacetag13 = SpaceTag.create(polar: 40.2, azimuth: 16.8, radius: 538.9, relational_body: "Earth", units: "km", post: post13)
spacetag14 = SpaceTag.create(polar: 23, azimuth: 63, radius: 291, relational_body: "The Moon", units: "km", post: post14)
spacetag15 = SpaceTag.create(polar: 63, azimuth: 21, radius: 0, relational_body: "The Moon", units: "km", post: post15)
spacetag16 = SpaceTag.create(polar: 72, azimuth: 23.0, radius: 4.3, relational_body: "Solar Center", units: "Mkm", post: post16)
spacetag17 = SpaceTag.create(polar: 45, azimuth: 13, radius: 27, relational_body: "Proxima Centurai", units: "LY", post: post17)
spacetag18 = SpaceTag.create(polar: 54, azimuth: 43, radius: 5419, relational_body: "Galactic Center", units: "LY", post: post18)
spacetag19 = SpaceTag.create(polar: 58.3, azimuth: 21.9, radius: 901.5, relational_body: "Earth", units: "km", post: post19)
spacetag20 = SpaceTag.create(polar: 81, azimuth: 40.9, radius: 5633.6, relational_body: "Jupiter", units: "km", post: post20)
spacetag21 = SpaceTag.create(polar: 70, azimuth: 50, radius: 150, relational_body: "Earth", units: "km", post: post21)

comment1  = Comment.create(content: "Having fun up there??", post: post1, user: user1)
comment2  = Comment.create(content: "Dude! That's so cool! We're all jealous of you down here :D", post: post1, user: user5)
comment3  = Comment.create(content: "Yeah, I mean... there's no air, so duh, lol", post: post2, user: user6)
comment4  = Comment.create(content: "Haha I hope you don't go CRAAAAAZY!!!", post: post2, user: user1)
comment5  = Comment.create(content: "Really? Y'all should be partying!!", post: post2, user: user4)
comment6  = Comment.create(content: "Be careful :(", post: post3, user: user1)
comment7  = Comment.create(content: "Uhh that doesn't sound healthy...", post: post3, user: user4)
comment8  = Comment.create(content: "OMG DID YOU TAKE VIDEO????", post: post7, user: user5)
comment9  = Comment.create(content: "Holy crap! That's insane!", post: post9, user: user4)
comment10 = Comment.create(content: "Hey, uh, shouldn't that be classified info or something...?", post: post4, user: user6)
comment11 = Comment.create(content: "Hey! Who are you calling smelly??", post: post10, user: user13)
comment12 = Comment.create(content: "We miss you too. See you soon <3", post: post19, user: user21)
comment13 = Comment.create(content: "So jealous.", post: post17, user: user16)
comment14 = Comment.create(content: "Bring back a spacerock!", post: post15, user: user11)
comment15 = Comment.create(content: "Hope you get a tan 8)", post: post16, user: user14)
comment16 = Comment.create(content: "Stop complaining, jerk. You're so lucky to be up there.", post: post18, user: user5)
comment17 = Comment.create(content: "Coffee > tea, you silly Brit", post: post12, user: user17)
comment18 = Comment.create(content: "It really is.", post: post13, user: user19)
comment19 = Comment.create(content: "Whoa dude. Check out that view!", post: post16, user: user2)
comment20 = Comment.create(content: "*eats his sirloin and pities you*", post: post14, user: user6)
comment21 = Comment.create(content: "Antoin! Remember! The enemy's gate is down!", post: post20, user: user11)
comment22 = Comment.create(content: "Aww, good doggy! *pet pet*", post: post21, user: astronaut15)