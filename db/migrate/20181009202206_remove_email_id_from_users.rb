class RemoveEmailIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email_id, :bigint
  end
end
