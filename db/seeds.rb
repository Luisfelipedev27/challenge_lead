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
    UserInformation.create!(name: "user-#{i+1}", email: "user-#{i+1}@example.com" , cpf: "000.00#{i+1}.000-00", date: "2000-02-21")
end