# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
# 	name = Faker::Name.unique.name
# 	phone = Faker::Phone.unique.mobile_number
# 	age = Faker::Age.unique.age
# 	Customer.create(:name => name, :age => age, :mobile_number => phone)
# end
Customer.create!([{
  name: "Vijay",
  age: 25,
  mobile_number: 15421225,
  address: "abc",
  user_type: "admin"
},
{
  name: "Kumar",
  age: 26,
  mobile_number: 45148451,
  address: "EFG",
  user_type: "user"
},
{
  name: "Mallela",
  age: 24,
  mobile_number: 1544444,
  address: "22-ghsdbs",
  user_type: "user"
}])

p "Created #{Customer.count} Customers"
