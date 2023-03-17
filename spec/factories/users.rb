FactoryBot.define do
  factory :user do
    name                  { Faker::Name.initials(number: 2) }
    facility_user         { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    phone_number          { Faker::PhoneNumber.phone_number }
    birthday              { '2000-01-01' }
    blood_type            { 'O型' }
    start_date            { nil }
  end
end
