class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage
      t.text :image
      t.float :price
      t.string :description
      t.string :street
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
