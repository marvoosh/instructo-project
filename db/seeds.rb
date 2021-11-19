# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all

user1 = User.create(first_name: 'Buffy', last_name: 'Summers', email: "buffy@test.com", password: '123123',instructor: true, profile_url: 'https://upload.wikimedia.org/wikipedia/en/a/a2/S514_Buffy.png')
user2 = User.create(first_name: 'Willow', last_name: 'Rosenberg', email: "willow@test.com", password: '123123',instructor: true, profile_url: 'https://openpsychometrics.org/tests/characters/test-resources/pics/BVS/3.jpg')
user3 = User.create(first_name: 'Xander', last_name: 'Harris', email: "xander@test.com", password: '123123', profile_url: 'https://openpsychometrics.org/tests/characters/test-resources/pics/BVS/2.jpg')
user4 = User.create(first_name: 'Angel', last_name: ' ', email: "angel@test.com", password: '123123', profile_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/top-1553084314.jpg?resize=480:*')
user5 = User.create(first_name: 'Marva', last_name: 'Noah', email: "marva@test.com", password: '123123', profile_url: 'https://ca.slack-edge.com/T02NE0241-U02GFM63B8B-3067df17e3fa-512')

Instructor.destroy_all

Instructor.create!(
  first_name: 'Buffy',
  last_name: 'Summers',
  expertise: 'Vampire Slayer',
  user_id: user1.id,
  price: 109,
  bio: 'If you got vampires, I can show you how to slay them!',
  profile_url: 'https://upload.wikimedia.org/wikipedia/en/a/a2/S514_Buffy.png',
  cover_url: 'https://365thingsinhouston.com/wp-content/uploads/2015/10/myths-and-legends-of-the-graveyard-nmfh-696x407.jpg'
)
Instructor.create!(
  first_name: 'Willow',
  last_name: 'Rosenberg',
  expertise: 'Witchcraft',
  user_id: user2.id,
  price: 89,
  bio: 'Witchcraft for all! I promise that in just a few short lessons you can also be a witch!',
  profile_url: 'https://openpsychometrics.org/tests/characters/test-resources/pics/BVS/3.jpg',
  cover_url: 'https://blogs.loc.gov/loc/files/2019/10/Screen-Shot-2019-10-29-at-6.45.46-PM-1024x608.png'
)
Instructor.create!(
  first_name: 'Xander',
  last_name: 'Harris',
  expertise: 'Useless',
  user_id: user3.id,
  price: 5,
  bio: "There is abslutely nothing I am good at. I wouldn't book with me if I were you",
  profile_url: 'https://openpsychometrics.org/tests/characters/test-resources/pics/BVS/2.jpg',
  cover_url: 'https://source.unsplash.com/HZrYYi6Orgg'
)
Instructor.create!(
  first_name: 'Angel',
  last_name: ' ',
  expertise: 'Mirrors',
  user_id: user4.id,
  price: 55,
  bio: "I am broody and moody and can show you how to become one too...",
  profile_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/top-1553084314.jpg?resize=480:*',
  cover_url: 'https://source.unsplash.com/hsg538WrP0Y'
)
Instructor.create!(
  first_name: 'Spike',
  last_name: 'The Bloody',
  expertise: 'Bleeching hair',
  user_id: user1.id,
  price: 69,
  bio: "Anything you can do I can do better!",
  profile_url: 'https://hips.hearstapps.com/digitalspyuk.cdnds.net/14/27/ustv-buffy-the-vampire-slayer-spike.jpg',
  cover_url: 'https://www.zmescience.com/mrf4u/statics/i/ps/cdn.zmescience.com/wp-content/uploads/2018/05/blood-1813410_960_720.jpg?width=1200&enable=upscale'
)

# booking1 = Booking.new(
#   date: '2021-11-17',
#   start_time: '17:00:00',
#   end_time: '18:00:00',
#   price: 50,
#   user_id: User.last.id,
#   instructor_id: Instructor.first.id
# )
# booking1.save!
