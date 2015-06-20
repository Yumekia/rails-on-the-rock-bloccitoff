require 'faker'
 
 # Create List
 1.times do
   List.create!(
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
 
 puts "Seed finished"
 puts "#{List.count} list created"
 puts "#{Task.count} tasks created"