FactoryBot.define do
  factory :user, class: Whodat::User do
    name  { "TestUser" }
    email { "test@user.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end