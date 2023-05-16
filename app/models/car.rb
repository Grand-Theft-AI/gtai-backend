class Car < ApplicationRecord
  belongs_to :user
  validates :make, :model, :year, :mileage, :image, :price, :description, :street, :city, :state, :zip, presence: true

end
