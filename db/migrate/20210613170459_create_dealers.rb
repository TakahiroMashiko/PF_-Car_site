class CreateDealers < ActiveRecord::Migration[5.2]
  def change
    create_table :dealers do |t|
      ## Column
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :image_id
      t.timestamps
    end
  end
end
