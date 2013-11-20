class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string   :notes
      t.integer :price
      t.string  :owner
      t.string  :phone
      t.string  :city
      t.string  :asset

      t.timestamps
    end
  end
end
