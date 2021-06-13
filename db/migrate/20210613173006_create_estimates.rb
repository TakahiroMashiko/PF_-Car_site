class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      ## Column
      t.integer :customer_id, null: false
      t.integer :car_id, null: false
      t.integer :car_option_id, null: false
      t.integer :total, null: false
      t.integer :tax, null: false
      t.integer :car_price, null: false
      t.integer :option_price, null: false
      t.timestamps
    end
  end
end
