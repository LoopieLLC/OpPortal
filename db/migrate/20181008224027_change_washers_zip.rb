class ChangeWashersZip < ActiveRecord::Migration[5.2]
  def change
    rename_column :washers, :zip, :zip_code
  end
end
