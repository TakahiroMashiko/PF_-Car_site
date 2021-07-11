class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      ## Column
      t.integer :customer_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.float :evaluation, null: false
      t.timestamps
    end
  end
end
