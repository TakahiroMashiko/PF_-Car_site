class CreateCarOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :car_options do |t|

      t.timestamps
    end
  end
end
