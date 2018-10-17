Whodat::User.create!(
    name: "Test User",
    email: "test2@test.com",
    password:  "testtest",
    password_confirmation: "testtest"
   )

Whodat::User.create!(
    name: "Sample User",
    email: "sample@sample.org",
    password: "password",
    password_confirmation: "password" 
   )

users = Whodat::User.all 

puts "Seed finished"
puts "#{Whodat::User.count} users created"
