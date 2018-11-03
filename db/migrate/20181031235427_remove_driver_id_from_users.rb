class RemoveDriverIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :driver_id, :bigint
  end
end
