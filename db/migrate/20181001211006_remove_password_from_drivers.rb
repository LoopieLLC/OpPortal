class RemovePasswordFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :password, :string
  end
end
