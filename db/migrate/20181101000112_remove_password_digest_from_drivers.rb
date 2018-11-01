class RemovePasswordDigestFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :password_digest, :string
  end
end
