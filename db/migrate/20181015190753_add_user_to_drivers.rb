class AddUserToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_reference :drivers, :user, foreign_key: true
  end
end
