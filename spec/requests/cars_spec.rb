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
end
