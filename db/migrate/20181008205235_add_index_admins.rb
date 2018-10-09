class AddIndexAdmins < ActiveRecord::Migration[5.2]
  def change
    add_index :admins, :username, unique: true
  end
end
