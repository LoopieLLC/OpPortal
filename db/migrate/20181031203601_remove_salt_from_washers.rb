class RemoveSaltFromWashers < ActiveRecord::Migration[5.2]
  def change
    remove_column :washers, :salt, :string
  end
end
