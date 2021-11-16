# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all

user1 = User.new(first_name: 'user', last_name: 'user', email: "#{Faker::Artist.name}@test.com", password: '123123')
user1.save!
puts user1.id

Instructor.destroy_all

30.times do
  first_name, last_name = Faker::Name.unique.name.split
  Instructor.create!(
    first_name: first_name,
    last_name: last_name,
    expertise: Faker::Job.field,
    user_id: user1.id
  )
end
