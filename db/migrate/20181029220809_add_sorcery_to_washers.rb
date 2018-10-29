class AddSorceryToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :crypted_password, :string
    add_column :washers, :salt, :string
  end
end
