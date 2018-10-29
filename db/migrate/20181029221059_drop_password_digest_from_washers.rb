class DropPasswordDigestFromWashers < ActiveRecord::Migration[5.2]
  def change
    remove_column :washers, :password_digest
  end
end
