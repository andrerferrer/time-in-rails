puts "Create some Restaurants"

address = { 
  street: "Ladeira da Glória, 8 - Glória",
  city: "Rio de Janeiro - RJ",
  country: "Brazil"
}

[
  { name: "Amareleen", **address },
  { name: "Verdeen", **address }
].each(&Restaurant.method(:create!))

# To help with seeding date and datetimes
# https://stackoverflow.com/questions/5474164/rails-seeding-database-data-and-date-formats
Booking.create! booked_at: DateTime.tomorrow.noon, restaurant: Restaurant.last

puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'

}

puts "Done!"
