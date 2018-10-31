class RemoveCryptedPasswordFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :crypted_password, :string
  end
end
