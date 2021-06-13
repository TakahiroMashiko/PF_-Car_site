class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      ## Column
      t.integer :customer_id, null: false
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :email
      t.string :subject, null: false
      t.string :message, null: false
      t.timestamps
    end
  end
end
