class RemoveDriverFromLoads < ActiveRecord::Migration[5.2]
  def change
    remove_column :loads, :driver_id, :bigint
  end
end
