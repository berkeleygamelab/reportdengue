# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "creating users..."
u1 = User.create!(:username => "Adelina", :password => "asdf123", :email => "Adelina@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile1.jpg')))
puts "user Jacob created"
u2 = User.create!(:username => "Iracema", :password => "asdf123", :email => "Iracema@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile2.jpg')))
puts "user Mason created"
u3 = User.create!(:username => "Izabel", :password => "asdf123", :points => 0, :email => "William@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile3.jpg')))
puts "user William created"
u4 = User.create!(:username => "Tereza", :password => "asdf123", :email => "Jayden@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile1.jpg')))
puts "user Jayden created"
u5 = User.create!(:username => "Severino", :password => "asdf123", :email => "Johna@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile4.jpg')))
puts "user Johna created"
u6 = User.create!(:username => "Ana", :password => "asdf123", :email => "Michael@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile2.jpg')))
puts "user Michael created"
u7 = User.create!(:username => "Carminha", :password => "asdf123", :email => "Sophia@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile5.jpg')))
puts "user Sophia created"
u8 = User.create!(:username => "Eliana", :password => "asdf123", :email => "Isabella@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile6.jpg')))
puts "user Isabella created"
u9 = User.create!(:username => "Everaldo", :password => "asdf123", :email => "Emily@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile4.jpg')))
puts "user Emily created"
u10 = User.create!(:username => "Fátima", :password => "asdf123", :email => "Olivia@gmail.com", :profile_photo => File.open(File.join(Rails.root,'/app/assets/images/profile_photos/profile5.jpg')))
puts "user Olivia created"
u11 = User.create!(:username => "Rubens", :password => "asdf123", :email => "Angela@gmail.com")
puts "user Angela created"
u12 = User.create!(:username => "Milton", :password => "asdf123", :email => "Alexandra@gmail.com")
puts "user Alexandra created"
u13 = User.create!(:username => "Marlene", :password => "asdf123", :email => "Lorrie@gmail.com")
puts "user Lorrie created"
u14 = User.create!(:username => "Luiza", :password => "asdf123", :email => "Samuel@gmail.com")
puts "user Samuel created"
u15 = User.create!(:username => "Jackson", :password => "asdf123", :email => "Roger@gmail.com")
puts "user Roger created"
u16 = User.create!(:username => "Chris", :password => "asdf123", :email => "Chris@gmail.com")
puts "user Chris created"
u17 = User.create!(:username => "Melody", :password => "asdf123", :email => "Melody@gmail.com")
puts "user Melody created"
u18 = User.create!(:username => "Eugene", :password => "asdf123", :email => "Eugene@gmail.com")
puts "user Eugene created"
u19 = User.create!(:username => "Timothy", :password => "asdf123", :email => "Timothy@gmail.com")
puts "user Timothy created"
u20 = User.create!(:username => "Lillian", :password => "asdf123", :email => "Lillian@gmail.com")
puts "user Lillian created"
u21 = User.create!(:username => "Marsh", :password => "asdf123", :email => "Marsh@gmail.com")
puts "user Marsh created"
u22 = User.create!(:username => "Travis", :password => "asdf123", :email => "Travis@gmail.com")
puts "user Travis created"
u23 = User.create!(:username => "Jeffery", :password => "asdf123", :email => "Jeffery@gmail.com")
puts "user Jeffery created"
u24 = User.create!(:username => "Jason", :password => "asdf123", :email => "Jason@gmail.com")
puts "user Jason created"
u25 = User.create!(:username => "Philip", :password => "asdf123", :email => "Philip@gmail.com")
puts "user Philip created"
u26 = User.create!(:username => "Kenny", :password => "asdf123", :email => "Kenny@gmail.com")
puts "user Kenny created"
u27 = User.create!(:username => "Serena", :password => "asdf123", :email => "Serena@gmail.com")
puts "user Serena created"
u28 = User.create!(:username => "Stella", :password => "asdf123", :email => "Stella@gmail.com")
puts "user Stella created"
u29 = User.create!(:username => "Debora", :password => "asdf123", :email => "Debora@gmail.com")
puts "user Debora created"
u30 = User.create!(:username => "Hurst", :password => "asdf123", :email => "Hurst@gmail.com")
puts "user Hurst created"
puts "all users created\n\n"

puts "creating locations for houses..."
l1 = Location.find_or_create("Maré, Brazil")
puts "Maré - Pina, Recife - Pernambuco, Brazil"
l2 = Location.find_or_create("1628 Spruce St. Berkeley, CA")
puts "1628 Spruce St. Berkeley, CA created"
l3 = Location.find_or_create("3850 Park Blvd. Oakland, CA")
puts "3850 Park Blvd. Oakland, CA created"
l4 = Location.find_or_create("2400 Durant Ave. Berkeley, CA")
puts "2400 Durant Ave. Berkeley, CA created"
l5 = Location.find_or_create("2627 Hillegass Ave. Berkeley, CA")
puts "2627 Hillegass Ave. Berkeley, CA created"

l6 = Location.find_or_create("2539 Durant Ave. Berkeley, CA")
puts "2539 Durant Ave. Berkeley, CA created"
l7 = Location.find_or_create("2525 Regent St. Berkeley, CA")
puts "2525 Regent St. Berkeley, CA created"
l8 = Location.find_or_create("2424 Channing Way. Berkeley, CA")
puts "2424 Channing Way. Berkeley, CA created"
l9 = Location.find_or_create("1701 Euclid Ave, Berkeley, CA")
puts "1701 Euclid Ave, Berkeley, CA created"
l10 = Location.find_or_create("2022 Cedar St. Oakland, CA")
puts "2022 Cedar St. Oakland, CA created"

l11 = Location.find_or_create("479 65th St. Oakland, CA")
puts "479 65th St. Oakland, CA created"
l12 = Location.find_or_create("454 Alcatraz Ave. Oakland, CA")
puts "454 Alcatraz Ave. Oakland, CA created"
l13 = Location.find_or_create("2702 Stuart St. Berkeley, CA")
puts "2702 Stuart St. Berkeley, CA created"
puts "creating locations for reports"
l14 = Location.find_or_create("110 Olive Ave. Piedmont, CA")
puts "110 Olive Ave. Piedmont, CA created"
l15 = Location.find_or_create("2145 Milvia St. Berkeley, CA")
puts "2145 Milvia St. Berkeley, CA created"

l16 = Location.find_or_create("2025 Addison St. Berkeley, CA")
puts "2025 Addison St. Berkeley, CA created"
l17 = Location.find_or_create("2021 Addison St. Berkeley, CA")
puts "2021 Addison St. Berkeley, CA created"
l18 = Location.find_or_create("1644 Oxford St. Berkeley, CA")
puts "1644 Oxford St. Berkeley, CA created"
l19 = Location.find_or_create("2120 Milvia St. Berkeley, CA")
puts "2120 Milvia St. Berkeley, CA created"
l20 = Location.find_or_create("2316 Haste St. Berkeley, CA")
puts "2316 Haste St. Berkeley, CA created"

l21 = Location.find_or_create("2314 Haste St. Berkeley, CA")
puts "2314 Haste St. Berkeley, CA created"
l22 = Location.find_or_create("4155 Piedmont Ave. Oakland, CA")
puts "4155 Piedmont Ave. Oakland, CA created"
l23 = Location.find_or_create("4150 Piedmont Ave. Oakland, CA")
puts "4155 Piedmont Ave. Oakland, CA created"
l24 = Location.find_or_create("400 40th St. Oakland, CA")
puts "400 40th St. Oakland, CA created"
l25 = Location.find_or_create("434 42th St. Oakland, CA")
puts "434 42th St. Oakland, CA created"

l26 = Location.find_or_create("300 38th St. Oakland, CA")
puts "300 38th St. Oakland, CA created"

puts "all locations created"

puts "creating houses..."
h1 = House.create!(:name => "Casa Adelina", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Adelina.jpg')))
h1.members << u1
h1.members << u2
h1.members << u3
h1.members << u4
h1.members << u5
h1.members << u6
h1.save!
puts "Jacob's house created"

h2 = House.create!(:name => "Casa Tereza", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Tereza.jpg')))

h2.members << u7
h2.save!
puts "Michael's house created"

h3 = House.create!(:name => "Casa Ana", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Ana.jpg')))
h3.members << u8
h3.members << u9
h3.save!
puts "Sophia's created"

h4 = House.create!(:name => "Casa Severino", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Severino.jpg')))
h4.members << u10
h4.members << u11
h4.save!
puts "Jayden's created"

h5 = House.create!(:name => "Casa Carminha", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Carminha.jpg')))
h5.members << u12
h5.members << u13
h5.save!

puts "Mason's created"
h6 = House.create!(:name => "Casa Rubens", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Rubens.jpg')))
h6.members << u14
h6.members << u15
h6.save!
puts "Evan's manor created"

h7 = House.create!(:name => "Casa Eliana", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Eliana.jpg')))
h7.members << u16
h7.members << u17
h7.save!
puts "Regent Apartment created"

h8 = House.create!(:name => "Casa Milton", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Milton.jpg')))
h8.members << u18
h8.members << u19
h8.save!
puts "Channing Apartment created"

h9 = House.create!(:name => "Casa Everaldo", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Everaldo.jpg')))
h9.members << u20
h9.members << u21
puts "Euclid House created"

h10 = House.create!(:name => "Casa Marlene", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Marlene.jpg')))
h10.members << u22
h10.members << u23
puts "Oakland Complex created"

h11 = House.create!(:name => "Casa Fatima", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Fatima.jpg')))
h11.members << u24
h11.members << u25
puts "Marshal Housing created"

h12 = House.create!(:name => "Casa Luiza", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Luiza.jpg')))
h12.members << u26
h12.members << u27
puts "Alcatraz Apt. created"

#h13 = House.create!(:name => "Casa Iracema", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Iracema.jpg')))
#h13.members << u28
#h13.members << u29
#h13.members << u30
#puts "Stuart Apt. created"

h14 = House.create!(:name => "Casa Josa", :location_id => l1.id, :profile_photo => File.open(File.join(Rails.root, '/app/assets/images/houses/Casa Josa.jpg')))

puts "Stuart Apt. created"
puts "all houses created and members added"
 
 
puts "creating open reports..."
r1 = Report.create_from_user("I saw many containers in this junk yard. They need some cleaning.", :status => :reported, :reporter => u1, :location => l14, :before_photo => File.open(File.join(Rails.root,'/app/assets/images/report_photos/report2_1.jpg')))
r1.save!

r2 = Report.create_from_user("The garden in the school requires some help.", :status => :claimed, :reporter => u1, :location => l15, :before_photo => File.open(File.join(Rails.root,'/app/assets/images/report_photos/report2_1.jpg')))
r2.claimer = u1
r2.save!

r3 = Report.create_from_user("Please take a look at the big garbage can next to the pole.", :status => :reported, :reporter => u1, :location => l16, :before_photo => File.open(File.join(Rails.root,'/app/assets/images/report_photos/report3_1.jpg' )))
r3.save!

r4 = Report.create_from_user("There are some pupae in the container.", :status => :eliminated, :reporter => u1, :location => l17, :before_photo => File.open(File.join(Rails.root,'/app/assets/images/report_photos/report2_1.jpg')), :after_photo => File.open(File.join(Rails.root,'/app/assets/images/report_photos/report2_2.jpg')))
r4.claimer = u1
r4.eliminator = u1
r4.save!

r5 = Report.create_from_user("The sewer contains water after rainning season", :status => :claimed, :reporter => u1, :location => l18)
r5.claimer = u1
r5.save!

r6 = Report.create_from_user("There are some pupae in the container.", :status => :claimed, :reporter => u1, :location => l19)
r6.claimer = u1
r6.save!

r2 = Report.create_from_user("In the pot next to the vending machine, there are some pupae.", :status => :reported, :reporter => u1, :location => l20)
r2.save!

r3 = Report.create_from_user("Next to the sever-eleven, there is a garbage can that has water in it.", :status => :reported, :reporter => u2, :location => l21)
r3.save!

r4 = Report.create_from_user("In my backyard, I kept several water containers that I need to clean myself.", :status => :eliminated, :reporter => u11, :location => l22)
r4.claimer = u1
r4.eliminator = u1
r4.save!

r5 = Report.create_from_user("I saw some water dents after raining, and pupae are growing.", :status => :eliminated, :reporter => u1, :location => l23)
r5.claimer = u2
r5.eliminator = u2
r5.save!

r6 = Report.create_from_user("Right next to the school bus stop, there are some garbage cans need to take care of.", :status => :reported, :reporter => u2, :location => l24)
r6.save!

r7 = Report.create_from_user("I have three huge water tanks that I need help with", :status => :eliminated, :reporter => u2, :location => l25)
r7.claimer = u7
r7.eliminator = u7
r7.save!
puts "all reports created"


puts "creating posts..."
e1 = Post.create!(:title => 'My Party', :content => "Over this weekend, I am creating a fight dengue party. I would like to invite everyone to join") do |post| post.wall = u1.house; post.user = u1 end
e2 = Post.create!(:title => 'Dengue Fighting', :content => "I would like to know if there are new technique to eliminate dengue. Would anyone like to share?") do |post| post.wall = u1.house; post.user = u1 end
e3 = Post.create!(:title => 'Great Job!', :content => "Hey guys! Let's keep it up. We are winning over our neighborhoods!") do |post|  post.wall = u1.house; post.user = u2 end
e4 = Post.create!(:title => 'New Discovery!', :content => "Here's a new method I discovered to fight dengue. Everytime you are done with a contain, you should flip it upside down.") do |post| post.wall = u1.house; post.user = u3 end

puts "events and comments created"

