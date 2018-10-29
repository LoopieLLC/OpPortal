class AddSorceryToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :crypted_password, :string
    add_column :drivers, :salt, :string
  end
end
