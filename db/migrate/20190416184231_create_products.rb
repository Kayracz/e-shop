class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, precision: 5, scale: 2, default: 0
      t.text :description
      t.string :color
      t.integer :quantity
      t.string :size
      t.string :gender

      t.timestamps
    end
  end
end
