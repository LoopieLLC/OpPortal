class AddDriverToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :driver, foreign_key: {on_delete: :cascade}
  end
end
