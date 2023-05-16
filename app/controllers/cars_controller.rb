class CarsController < ApplicationController

    def index 
        cars = Car.all
        render json: cars
    end

    def create 
        car = Car.create(car_params)
        if car.valid?
            render json: car
        else
            render json: car.errors, status: 422
    end



    private
    def car_params
        params.require(:car).permit(:make, :model, :year, :mileage, :image, :price, :description, :street, :city, :state, :zip, :user_id)
    end
end
