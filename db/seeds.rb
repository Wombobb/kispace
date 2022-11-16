
puts "destroying all the stuff"
User.destroy_all
EventSpace.destroy_all
Booking.destroy_all

puts "creating users"
User.create!(email: "tom@kispace.com", password: "123123")
User.create(email: "tash@kispace.com", password: "123123")
User.create(email: "mo@kispace.com", password: "123123")
User.create(email: "sammy@kispace.com", password: "123123")

puts "made #{User.all.count} user/s"

puts "creating eventspaces"
EventSpace.create!(user_id: User.all.sample.id, name: Faker::Address.unique.street_name, location: "tokyo", price: rand(300..1000), description: "This rustic bar is part of a restaurant that serves traditional BBQ with a twist -- using tomatillo & chorizo products from Mexico, for example. If you book an event with us, please check our add-on's feature or inquire about cost per person for food & drink!")
EventSpace.create(user_id: User.all.sample.id, name: Faker::Address.unique.street_name, location: "kyoto", price: rand(300..1000), description: "Prior to your visit, the art gallery will be cleaned  by a professional and will adhere to all protocols. Let me reassure you that your safety is our top priority. ")
EventSpace.create(user_id: User.all.sample.id, name: Faker::Address.unique.street_name, location: "osaka", price: rand(300..1000), description: "Attached to DogPark Bar (The Doghaus), dogs are certainly welcome to attend your inside event! This cozy space holds 50, and can be used for Parties, Showers, Pop-Ups, Meetings, Galleries, etc.")
EventSpace.create(user_id: User.all.sample.id, name: Faker::Address.unique.street_name, location: "sapporo", price: rand(300..1000), description: "Looking for a unique and interesting place to hold a meeting or business event ? ")
puts "made #{EventSpace.all.count} eventspace/s"

puts "creating Bookings"
Booking.create!(start_date: Date.today, end_date: Date.today, status: "pending", user_id: User.all.sample.id, event_space_id: EventSpace.all.sample.id)
puts "made #{Booking.all.count} booking/s"
