class RemoveEvaluationFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :evaluation, :float
  end
end
