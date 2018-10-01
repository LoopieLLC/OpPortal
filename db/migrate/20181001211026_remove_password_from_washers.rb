class RemovePasswordFromWashers < ActiveRecord::Migration[5.2]
  def change
    remove_column :washers, :password, :string
  end
end
