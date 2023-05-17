require 'rails_helper'

RSpec.describe Car, type: :model do
  let (:user) {User.create(email: 'testing@example.com', password: 'password1', password_confirmation: 'password1')}
  it 'should have a valid make' do
    car = user.cars.create(
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
    )

    expect(car.errors[:make]).to include "can't be blank"
  end

  it 'should have a valid model' do
    car = user.cars.create(
      make: "Tesla",
      year: 2020,
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )

    expect(car.errors[:model]).to include "can't be blank"
  end

  it 'should have a valid year' do
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )

    expect(car.errors[:year]).to include "can't be blank"
  end

  it 'should have valid mileage' do
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )

    expect(car.errors[:mileage]).to include "can't be blank"
  end

  it 'should have a valid image' do 
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      mileage: 5000,
      price: 89000.00,
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )
    expect(car.errors[:image]).to include "can't be blank"
  end

  it 'should have a valid price' do 
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )
    expect(car.errors[:price]).to include "can't be blank"
  end

  it 'should have a valid description' do 
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      street: "1337 Los Santos Way",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )
    expect(car.errors[:description]).to include "can't be blank"
  end

  it 'should have a valid street' do 
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      description: "Everything is Electric",
      city: "San Andreas",
      state: "CA",
      zip: "90210"
    )
    expect(car.errors[:street]).to include "can't be blank"
  end

  it 'should have a valid city' do 
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      state: "CA",
      zip: "90210"
    )
    expect(car.errors[:city]).to include "can't be blank"
  end

  it 'should have a valid state' do 
    car = user.cars.create(
      make: "Tesla",
      model: "Model S",
      year: 2020,
      mileage: 5000,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU",
      price: 89000.00,
      description: "Everything is Electric",
      street: "1337 Los Santos Way",
      city: "San Andreas",
      zip: "90210"
    )
    expect(car.errors[:state]).to include "can't be blank"
  end

  it 'should have a valid zip' do 
    car = user.cars.create(
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

    )
    expect(car.errors[:zip]).to include "can't be blank"
  end
end
