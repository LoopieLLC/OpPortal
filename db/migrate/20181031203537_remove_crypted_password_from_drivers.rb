class RemoveCryptedPasswordFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :crypted_password, :string
  end
end
