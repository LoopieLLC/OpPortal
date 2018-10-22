class AddWasherToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :washer, foreign_key: {on_delete: :cascade}
  end
end
