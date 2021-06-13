class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      ## Column
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :image_id
      t.text :introduction
      t.integer :price, null: false
      t.boolean :is_active, default: true, null: false
      t.timestamps
    end
  end
end
