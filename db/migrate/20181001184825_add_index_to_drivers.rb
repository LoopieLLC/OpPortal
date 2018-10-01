class AddIndexToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_index :drivers, :email, unique: true
    add_index :drivers, :username, unique: true
  end
end
