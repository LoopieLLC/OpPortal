class RemoveSaltFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :salt, :string
  end
end
