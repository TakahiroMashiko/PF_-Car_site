class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|

      t.timestamps
    end
  end
end
