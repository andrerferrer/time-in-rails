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
