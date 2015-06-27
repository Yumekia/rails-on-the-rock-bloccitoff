require 'faker'
 
# Create Users
 5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all
 
 # Note: by calling `User.new` instead of `create`,
 # we create an instance of User which isn't immediately saved to the database.
 
 # The `skip_confirmation!` method sets the `confirmed_at` attribute
 # to avoid triggering an confirmation email when the User is saved.
 
 # The `save` method then saves this User to the database.
 
 
 # Create List
 1.times do
   List.create!(
     user: users.sample,
     title:  Faker::Lorem.sentence,
   )
 end
 list = List.all
 
 # Create Tasks
 10.times do
   Task.create!(
     description: Faker::Lorem.sentence,
   )
 end
 
 # Create a member
 member = User.new(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )
 member.skip_confirmation!
 member.save!

 
 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{List.count} list created"
 puts "#{Task.count} tasks created"