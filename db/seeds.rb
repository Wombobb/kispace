require "faker"

puts "destroying reviews, bookings, eventspace and Users in that order"
Review.destroy_all
Booking.destroy_all
EventSpace.destroy_all
User.destroy_all
puts "done!"

puts "creating users"
User.create!(email: "tom@kispace.com", password: "123123")
User.create(email: "tash@kispace.com", password: "123123")
User.create(email: "mo@kispace.com", password: "123123")
User.create(email: "sammy@kispace.com", password: "123123")
50.times do
  User.create!(email: Faker::Internet.email, password: "123123")
  # photo: Faker::LoremFlickr.image(size: "50x60", search_terms: ['avatar', 'person'])
end
puts "made #{User.all.count} user/s"

LOCATION = ["tokyo", "kyoto", "osaka", "sapporo", "naha", "fukuoka"]

puts "creating eventspaces"
100.times do
  EventSpace.create!(user_id: User.all.sample.id, name: Faker::Address.unique.street_name, location: LOCATION.sample, price: rand(300..1000), description: Faker::Lorem.sentences(number: 6).join(" "))
end
puts "made #{EventSpace.all.count} eventspace/s"

puts "creating reviews"
300.times do
  Review.create!(comment: Faker::Lorem.sentences(number: 3).join(" "), rating: rand(0..5), user_id: User.all.sample.id, event_space_id: EventSpace.all.sample.id)
end
puts "made #{Review.all.count} review/s"

# puts "creating Bookings"
# Booking.create!(start_date: Date.today, end_date: Date.today, status: "pending", user_id: User.all.sample.id, event_space_id: EventSpace.all.sample.id)
# puts "made #{Booking.all.count} booking/s"
