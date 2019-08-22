class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :title, null: false
      t.string :type
      t.integer :color
      t.string :driver

      t.timestamps
    end
  end
end
