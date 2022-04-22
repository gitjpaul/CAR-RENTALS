class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.text :url_car
      t.integer :price_per_day

      t.timestamps
    end
  end
end
