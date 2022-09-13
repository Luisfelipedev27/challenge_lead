# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do |i|
    User.create(email: "user-#{i+1}@example.com", password: "password", password_confirmation: "password")
end

150.times do |i|
    UserInformation.create!(
                            name: Faker::Name.name,
                            email: Faker::Internet.email, 
                            cpf: Faker::CPF.pretty, 
                            date: Faker::Date.between(from: '1990-09-23', to: '2002-09-25')
                           )
end