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
EventSpace.create!(user_id: User.all.sample.id, name: "cool name", location: "tokyo", price: "500", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpace.create(user_id: User.all.sample.id, name: "awesome name", location: "kyoto", price: "300", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpace.create(user_id: User.all.sample.id, name: "great name", location: "osaka", price: "700", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpace.create(user_id: User.all.sample.id, name: "cosy name", location: "sapporo", price: "900", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
puts "made #{EventSpace.all.count} eventspace/s"

puts "creating Bookings"
Booking.create!(start_date: Date.today, end_date: Date.today, status: "pending", user_id: User.all.sample.id, event_space_id: EventSpace.all.sample.id)
puts "made #{Booking.all.count} booking/s"
