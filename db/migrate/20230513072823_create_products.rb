class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :sku, null: false
      t.integer :stock, null: false
      t.float :price, null: false
      t.float :size, null: false
      t.string :brand, null: false
      t.string :color, null: false
      t.timestamps
    end
  end
end
