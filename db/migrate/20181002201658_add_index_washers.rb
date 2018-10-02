class AddIndexWashers < ActiveRecord::Migration[5.2]
  def change
    add_index :washers, :email, unique: true
    add_index :washers, :username, unique: true
  end
end
