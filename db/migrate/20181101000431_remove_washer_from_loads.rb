class RemoveWasherFromLoads < ActiveRecord::Migration[5.2]
  def change
    remove_column :loads, :washer_id, :bigint
  end
end
