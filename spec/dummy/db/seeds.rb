Whodat::User.create!(
    name: "Test User",
    email: "test2@test.com",
    password:  "testtest",
    password_confirmation: "testtest"
   )

   20.times do |n|
    name  = Faker::Name.name
    email = "whodat-#{n+1}@engine.org"
    password = "password"
    Whodat::User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password)
  end

users = Whodat::User.all 

puts "Seed finished"
puts "#{Whodat::User.count} users created"
