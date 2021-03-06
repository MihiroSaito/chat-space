FactoryBot.define do
  factory :user do
    password = Facker::Internet.password(min_length: 8)
    name {Facer::Name.last_name}
    email {Faker::Internet.free_email}
    password {password}
    password_confirmation {password}
  end
end