

User.destroy_all

User.create(email: "tom@kispace.com", password: "123123")
User.create(email: "tash@kispace.com", password: "123123")
User.create(email: "mo@kispace.com", password: "123123")
User.create(email: "sammy@kispace.com", password: "123123")


EventSpace.destroy_all

EventSpace.create!(user_id: "1", name: "cool name", location: "tokyo", price: "500", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpace.create!(user_id: "2", name: "awesome name", location: "kyoto", price: "300", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpace.create!(user_id: "3", name: "great name", location: "osaka", price: "700", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpace.create!(user_id: "4", name: "cosy name", location: "sapporo", price: "900", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")


Booking.destroy_all
Booking.create(start_date: "", end_date: "", status: "")

