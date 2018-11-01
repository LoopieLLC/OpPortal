class RemoveWasherIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :washer_id, :bigint
  end
end
