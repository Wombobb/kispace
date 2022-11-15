# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destoy_all
User.create(email: "tom@kispace.com", password: "123123")
User.create(email: "tash@kispace.com", password: "123123")
User.create(email: "mo@kispace.com", password: "123123")
User.create(email: "sammy@kispace.com", password: "123123")

EventSpaces.destroy_all
EventSpaces.create(name: "cool name", location: "tokyo", price: "500", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpaces.create(name: "awesome name", location: "kyoto", price: "300", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpaces.create(name: "great name", location: "osaka", price: "700", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
EventSpaces.create(name: "cosy name", location: "sapporo", price: "900", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor quam vitae enim gravida, eu consectetur turpis consectetur. Cras fringilla id lacus sed finibus. Sed risus justo, venenatis sit amet sem rutrum, tristique aliquam leo. Etiam et arcu faucibus, consectetur felis in, eleifend libero. ")
