class AddDriverToLoad < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :driver_id, :integer
  end
end
