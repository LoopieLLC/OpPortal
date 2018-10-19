class AddDriverToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :driver, foreign_key: true
  end
end
