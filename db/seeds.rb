user1=User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2=User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

cars1=[
  {
    make: "Tesla",
    model: "Model S",
    year: 2020,
    mileage: 5000,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
    price: 89000.00,
    description: "Everything is Electric",
    street: "1337 Los Santos Way",
    city: "San Andreas",
    state: "CA",
    zip: "90210"
  }
]
cars2=[
  {
    make: "Lucid",
    model: "Air",
    year: 2023,
    mileage: 200,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp3-9mrkSEr99-IulJY2vjwjdwAsMqJilpSA&usqp=CAU",
    price: 8700.00,
    description: "Everything is Also Electric",
    street: "808 Mafia",
    city: "Vice City",
    state: "FL",
    zip: "33101"
  }
]

cars1.each do |car|
  user1.cars.create(car)
  puts "created: #{car}"
end
cars2.each do |car|
  user2.cars.create(car)
  puts "created: #{car}"
end
