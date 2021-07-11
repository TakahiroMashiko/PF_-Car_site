class AddEvaluationToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :evaluation, :float
  end
end
