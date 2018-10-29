class DropPasswordDigestFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :password_digest
  end
end
