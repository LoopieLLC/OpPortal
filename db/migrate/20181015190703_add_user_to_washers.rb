class AddUserToWashers < ActiveRecord::Migration[5.2]
  def change
    add_reference :washers, :user, foreign_key: on_delete: :cascade
  end
end
