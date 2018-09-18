class RemoveClientFromLoad < ActiveRecord::Migration[5.2]
  def change
    remove_column :loads, :client_id, :integer
  end
end
