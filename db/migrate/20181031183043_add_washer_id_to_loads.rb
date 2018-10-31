class AddWasherIdToLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :washer_id, :bigint
  end
end
