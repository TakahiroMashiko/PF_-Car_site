class CreateCarOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :car_options do |t|
      ## Column
      t.integer :car_id, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.boolean :is_active, default: true, null: false
      t.timestamps
    end
  end
end
