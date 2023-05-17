require 'rails_helper'

RSpec.describe "Cars", type: :request do
  let(:user) {User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
  )
}

  describe "GET /index" do
    it 'gets a list of cars' do 
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
        zip: "90210"
      )
      get '/cars'

      car = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(car.first['make']).to eq('Tesla')
    end
  end

  describe "POST /create" do 
    it 'creates a car' do
      car_params = {
        car: {
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
      }
      post '/cars', params: car_params
      expect(response).to have_http_status(200)
      car = Car.first
      expect(car.make).to eq "Tesla"
      expect(car.model).to eq "Model S"
      expect(car.year).to eq 2020
      expect(car.mileage).to eq 5000
      expect(car.image).to eq "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvZkwSkgsvgEOTdPHW3Lw-rVJPTM_rp0R9Lg&usqp=CAU"
      expect(car.price).to eq 89000.00
      expect(car.description).to eq "Everything is Electric"
      expect(car.street).to eq "1337 Los Santos Way"
      expect(car.city).to eq "San Andreas"
      expect(car.state).to eq "CA"
      expect(car.zip).to eq "90210"
    end
  end

  describe "PATCH /update" do 
    it 'updates a car' do
      car = user.cars.create(
        user_id: user.id,
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
        )
      car_params = {
        car: {
          user_id: user.id,
          make: nil,
          model: nil,
          year: nil,
          mileage: nil,
          image: nil,
          price: nil,
          description: nil,
          street: nil,
          city: nil,
          state: nil,
          zip: nil
        }
      }
      patch "/cars/#{car.id}", params: car_params
      expect(response).to have_http_status(422)
      car = JSON.parse(response.body)
      expect(car['make']).to include "can't be blank"
      expect(car['model']).to include "can't be blank"
      expect(car['year']).to include "can't be blank"
      expect(car['mileage']).to include "can't be blank"
      expect(car['image']).to include "can't be blank"
      expect(car['price']).to include "can't be blank"
      expect(car['description']).to include "can't be blank"
      expect(car['street']).to include "can't be blank"
      expect(car['city']).to include "can't be blank"
      expect(car['state']).to include "can't be blank"
      expect(car['zip']).to include "can't be blank"
    end
  end
  describe "DELETE /destroy" do
    it "should delete a car" do
    car = Car.create(
      user_id: user.id,
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
    )
    delete "/cars/#{car.id}"
    expect(response).to have_http_status(200)
  
  end
  end
end
