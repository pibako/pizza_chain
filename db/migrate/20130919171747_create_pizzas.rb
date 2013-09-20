class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.references :restaurant
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description

      t.timestamps
    end
    add_index :pizzas, :restaurant_id
  end
end
