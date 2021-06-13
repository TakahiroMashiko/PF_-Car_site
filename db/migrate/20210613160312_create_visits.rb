class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      ## Column
      t.integer :customer_id, null: false
      t.integer :dealer_id, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :visit, null: false
      t.integer :visit_status, default: 0, null: false
      t.timestamps
    end
  end
end
