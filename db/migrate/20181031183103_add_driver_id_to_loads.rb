class AddDriverIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :driver_id, :bigint
  end
end
